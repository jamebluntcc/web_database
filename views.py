# coding=utf-8
from flask import Flask, render_template, redirect, request, jsonify, session,url_for,flash
from datetime import timedelta
from werkzeug.utils import secure_filename
import interface
from validate_code import get_validate_code
import json
import sys
import os
from new_db import DBConn
reload(sys)
sys.setdefaultencoding('utf8')

ALLOWED_EXTENSIONS = ['xlsx','xls']
UPLOAD_FOLDER = os.path.join(os.path.dirname(__file__),'uploads')

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
app.config['SECRET_KEY'] = 'hard to guess string'
app.permanent_session_lifetime = timedelta(hours=2)

@app.route('/')
def main():
    username = session.get('login_id')
    if not username:
        return redirect('/login')
    user_role, status = interface.get_user_role(username)
    (e_mail, tel, company, field, customer_name) = interface.get_other_info(username)
    project_num_list = ['']
    project_num_list += interface.get_project_number_list(username, user_role)
    return render_template('main2.html', username=username,
                           role=user_role,
                           e_mail=e_mail,
                           tel=tel,
                           company=company,
                           customer_name=customer_name,
                           field=field,
                           project_num_list=project_num_list)

@app.route('/save_input', methods=['GET','POST'])
def save_info():
    username = session.get('login_id')
    if not username:
        return redirect('/login')
    #if request.method == 'POST':
    all_info = request.json['all_info']
    all_info = json.loads(all_info)
    action = request.json['action']

    return jsonify(interface.save_info(all_info, username, action))

@app.route('/login', methods=['GET'])
def login():
    return render_template('login.html')


@app.route('/save_row', methods=['POST'])
def save_row():
    return ''


@app.route('/check_login', methods=['GET', 'POST'])
def check_login():
    args = request.args
    username = args.get('username')
    pwd = args.get('password')
    user_role, status = interface.get_user_role(username, pwd)

    if not username or not pwd or not user_role:
        return jsonify({'data': '', 'errcode': 2, 'msg': '登录失败, 请确认用户名和密码输入正确！'})
    elif status == 'R':
        return jsonify({'data': '', 'errcode': 1, 'msg': '该用户还未通过审核， 请等待管理员审核！'})
    elif status == 'N':
        return jsonify({'data': '', 'errcode': 1, 'msg': '管理员拒绝通过审核或者该帐号已被禁用， 详情请联系系统管理员！'})
    elif user_role == 'user':
        session['login_id'] = username
        return jsonify({'data': '', 'errcode': 0, 'msg': '登录成功！'})
    elif user_role == 'manager':
        # TODO: show manager page
        session['login_id'] = username
        return jsonify({'data': '', 'errcode': 0, 'msg': '登录成功！'})


@app.route('/quit_login', methods=['GET', 'POST'])
def quit_login():
    session['login_id'] = None
    return redirect('/login')


@app.route('/analysis', methods=['GET'])
def analysis():
    selected_project = request.args.get('selected_project')
    username = session.get('login_id')
    if not username:
        return redirect('/login')
    user_role, status = interface.get_user_role(username)
    data = interface.get_analysis_data(username, user_role, selected_project)
    action = 'update' if data else 'new'
    project_list = interface.get_project_number_list(username, user_role)
    data['selected_project'] = selected_project
    return render_template('analysis.html', data=data, action=action,
                           project_list=project_list, selected_project=selected_project)


@app.route('/register', methods=['GET'])
def register():
    return render_template('register.html')


@app.route('/save_user_info', methods=['GET'])
def save_user_info():
    user_info = request.args.get('info')
    try:
        data = interface.save_user_info(json.loads(user_info))
    except Exception, e:
        print e
    return jsonify(data)


@app.route('/modify_base_info', methods=['GET'])
def modify_base_info():
    user_info = request.args.get('info')
    try:
        data = interface.modify_base_info(json.loads(user_info))
    except Exception, e:
        print e
    return jsonify(data)


@app.route('/change_password', methods=['GET'])
def change_password():
    user_info = request.args.get('info')
    try:
        data = interface.change_password(json.loads(user_info))
    except Exception, e:
        print e
    return jsonify(data)

@app.route('/validate_code', methods=['GET', 'POST'])
def validate_code():
    try:
        code = get_validate_code()
    except Exception, e:
        print e

    return code

@app.route('/get_all_data', methods=['GET', 'POST'])
def get_all_data():
    username = session.get('login_id')
    if not username:
        return redirect('/login')
    role = request.args.get('role')
    data = interface.show_all_data(username, role=role)
    return jsonify({'data': data, 'errcode': 0, 'msg': 'Success'})


@app.route('/get_all_user_data', methods=['GET', 'POST'])
def get_all_user_data():
    username = session.get('login_id')
    if not username:
        return redirect('/login')
    data = interface.get_all_user_data()
    return jsonify({'data': data, 'errcode': 0, 'msg': 'Success'})


@app.route('/input_info')
def input_info():
    username = session.get('login_id')
    if not username:
        return redirect('/login')
    user_role, status = interface.get_user_role(username)
    action = request.args.get('action')
    action = 'new' if not action else action
    project_number = request.args.get('project_number')
    session['project_number'] = project_number
    data = interface.get_one_project_data(project_number) if project_number else {}
    manager_list = interface.get_manager_list()

    return render_template('user_input.html', data=data, action=action, role=user_role, manager_list=manager_list)

@app.route('/get_detail_sample_data', methods=['GET', 'POST'])
def get_detail_sample_data():
    project_number = request.args.get('project_number')
    username = session.get('login_id')
    if not username:
        return redirect('/login')
    data = interface.get_detail_sample_data(project_number)
    return jsonify({'data': data, 'errcode': 0, 'msg': 'Success'})


@app.route('/get_analysis_table_data', methods=['GET', 'POST'])
def get_analysis_table_data():
    selected_project = request.args.get('selected_project')
    username = session.get('login_id')
    if not username:
        return redirect('/login')
    data = interface.get_analysis_table_data(username, selected_project)
    return jsonify({'data': data, 'errcode': 0, 'msg': 'Success'})


@app.route('/save_status', methods=['GET', 'POST'])
def save_status():
    username = session.get('login_id')
    if not username:
        return redirect('/login')
    status = request.form['status']
    project_number = request.form['project_number']
    data = interface.save_status(project_number, status)
    return jsonify({'data': data, 'errcode': 0, 'msg': 'Success'})


@app.route('/admin_save_user_info', methods=['GET', 'POST'])
def admin_save_user_info():
    username = session.get('login_id')
    if not username:
        return redirect('/login')
    status = request.form['status']
    username = request.form['username']
    data = interface.admin_save_user_info(username, status)
    return jsonify({'data': data, 'errcode': 0, 'msg': 'Success'})

@app.route('/upload', methods=['GET', 'POST'])
def upload():
    io_stream = request.files['fileupload']
    secure_filename(io_stream.filename)
    ret = interface.upload_excel(io_stream)
    return jsonify(ret)

@app.route('/upload_project_file', methods=['GET', 'POST'])
def upload_project_file():
    username = session.get('login_id')
    if not username:
        return redirect('/login')

    project_name = request.args.get('project_name')
    project_number = request.args.get('project_number')
    io_stream = request.files['file_data']
    filename = io_stream.filename
    try:
        ret = interface.upload_project_file(io_stream, filename, project_number, project_name)
    except Exception, e:
        import traceback
        traceback.print_exc()
    return jsonify(ret)


@app.route('/export_user_info', methods=['GET', 'POST'])
def export_user_info():
    return interface.export_user_info()


@app.route('/get_upload_page', methods=['GET', 'POST'])
def get_upload_page():
    project_number = request.args.get('project_number')
    project_name = request.args.get('project_name')
    return render_template('upload_project_file.html', project_number=project_number, project_name=project_name)


@app.route('/get_project_files', methods=['GET', 'POST'])
def get_project_files():
    project_number = request.args.get('project_number')
    project_name = request.args.get('project_name')

    return jsonify(interface.get_project_files(project_number, project_name))

'''
add five tables by chencheng on 2017-04-24
add a new module:up_down_compare_table by chencheng on 2017-05-23
'''
url_map = {'/send_sample_table':'send_sample_table.html',
           '/quality_inspection_table':'quality_inspection_table.html',
           '/up_machine_table':'up_machine_table.html',
           '/down_machine_table':'down_machine_table.html',
           '/return_table':'return_table.html'}

@app.route('/send_sample_table')
def send_sample_table():
    #show summary
    project_number = session.get('project_number')
    results = interface.show_summary('send_sample_table',project_number)
    return render_template('send_sample_table.html',distinct_results = results,project_number=project_number)

@app.route('/quality_inspection_table')
def quality_inspection_table():
    project_number = session.get('project_number')
    results = interface.show_summary('quality_inspection_table',project_number)
    return render_template('quality_inspection_table.html',distinct_results = results,project_number=project_number)

@app.route('/up_machine_table')
def up_machine_table():
    project_number = session.get('project_number')
    results = interface.show_summary('up_machine_table',project_number)
    return render_template('up_machine_table.html',distinct_results = results,project_number=project_number)

@app.route('/down_machine_table')
def down_machine_table():
    project_number = session.get('project_number')
    results = interface.show_summary('down_machine_table',project_number)
    return render_template('down_machine_table.html',distinct_results = results,project_number=project_number)

@app.route('/up_down_compare_table')
def up_down_compare_table():
    project_number = session.get('project_number')
    return render_template('updown_compare_table.html',project_number=project_number)

@app.route('/show_up_down_compare',methods = ['GET','POST'])
def show_up_down_compare():
    if request.method == 'POST':
        project_number = session.get('project_number')
    #tranfer list to dict:
        compare_title = ['project_id','sample_name','sample_id','upmachine_time','downmachine_time','down_quant']
        merge_list = interface.compare_table_data(project_number)
        data = []
        i = 0
        for each in merge_list:
            data.append(dict(zip(compare_title,each)))
            i += 1

        return jsonify({'total':i,'rows':data})
    return redirect(request.referrer)
@app.route('/return_table')
def return_table():
    project_number = session.get('project_number')
    results = interface.show_summary('return_table',project_number)
    return render_template('return_table.html',project_number=project_number)
#upload five files to database:
@app.route('/upload_quality_inspection_table',methods=['GET','POST'])
def upload_quality_inspection_table():
    if request.method == 'POST':
        file = request.files['file']
        if file and interface.allow_files(file.filename):
            filename = secure_filename(file.filename)
            if not os.path.exists(app.config['UPLOAD_FOLDER']):
                os.makedirs(app.config['UPLOAD_FOLDER'])
            file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
            filepath = os.path.join(app.config['UPLOAD_FOLDER'], filename)
            data = interface.transfer_excel_to_json2(file_name=filepath)

            if not data:
                flash('your xlsx have more sheets!')
                return redirect(request.referrer)

            table_name = interface.check_table(data[0].keys())
            if table_name != 'quality_inspection_table':
                flash('it not {file_name},please try again!'.format(file_name='quality_inspection_table'))
                return redirect(request.referrer)
            #get upload times
            db = DBConn()
            '''
            project_number = session.get('project_number') if session.get('project_number') else ''
            cmd = "select quality_inspection_table from count_upload_time_table where 'project_id' = {project_number}".format(project_number=project_number)
            result = db.execute(cmd)
            upload_times = int(result[0])
            '''
            #always insert!
            for each_record in data:
                db.insert('quality_inspection_table',each_record)
            #count the upload times
            '''
            upload_times += 1
            cmd = "update count_upload_time_table set quality_inspection_table = '{upload_times}' where 'project_id' = {project_number}".format(project_number=project_number,upload_times=upload_times)
            result = db.execute(cmd)
            '''
            return redirect(request.referrer)
        elif file == '':
            flash('no select file!')
            return  redirect(request.referrer)
        else:
            flash('only .xls or .xlsx file required!')
            return redirect(request.referrer)

@app.route('/upload_send_sample_table',methods=['GET','POST'])
def upload_send_sample_table():
    if request.method == 'POST':
        file = request.files['file']
        if file and interface.allow_files(file.filename):
            filename = secure_filename(file.filename)
            if not os.path.exists(app.config['UPLOAD_FOLDER']):
                os.makedirs(app.config['UPLOAD_FOLDER'])
            file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
            filepath = os.path.join(app.config['UPLOAD_FOLDER'], filename)
            data = interface.transfer_excel_to_json2(file_name=filepath)

	    if not data:
                flash('your xlsx have more sheets!')
                return redirect(request.referrer)

            table_name = interface.check_table(data[0].keys())
            if table_name != 'send_sample_table':
                flash('it not {file_name},please try again!'.format(file_name='send_sample_table'))
                return redirect(request.referrer)

            db = DBConn()
            '''
            project_number = session.get('project_number') if session.get('project_number') else ''
            cmd = "select send_sample_table from count_upload_time_table where 'project_id' = {project_number}".format(project_number=project_number)
            result = db.execute(cmd)
            upload_times = int(result[0])
            '''
            for each_record in data:
                db.insert('send_sample_table',each_record)
            '''
            upload_times += 1
            cmd = "update count_upload_time_table set send_sample_table='{upload_times}' where 'project_id' = {project_number}".format(project_number=project_number,upload_times=upload_times)
            result = db.execute(cmd)
            '''
            return redirect(request.referrer)
        elif file == '':
            flash('no select file!')
            return  redirect(request.referrer)
        else:
            flash('only .xls or .xlsx file required!')
            return redirect(request.referrer)

@app.route('/upload_up_machine_table',methods=['GET','POST'])
def upload_upmachine_table():
    if request.method == 'POST':
        file = request.files['file']
        if file and interface.allow_files(file.filename):
            filename = secure_filename(file.filename)
            if not os.path.exists(app.config['UPLOAD_FOLDER']):
                os.makedirs(app.config['UPLOAD_FOLDER'])
            file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
            filepath = os.path.join(app.config['UPLOAD_FOLDER'], filename)
            data = interface.transfer_excel_to_json2(file_name=filepath)

            if not data:
                flash('your xlsx have more sheets!')
                return redirect(request.referrer)

            table_name = interface.check_table(data[0].keys())
            if table_name != 'up_machine_table':
                flash('it not {file_name},please try again!'.format(file_name='up_machine_table'))
                return redirect(request.referrer)

            db = DBConn()
            '''
            project_number = session.get('project_number') if session.get('project_number') else ''
            cmd = "select up_machine_table from count_upload_time_table where 'project_id' = {project_number}".format(project_number=project_number)
            result = db.execute(cmd)
            upload_times = int(result[0])
            '''
            for each_record in data:
                db.insert('up_machine_table',each_record)
            '''
            upload_times += 1
            cmd = "update count_upload_time_table set up_machine_table where 'project_id' = {project_number}".format(project_number=project_number)
            result = db.execute(cmd)
            '''
            return redirect(request.referrer)
        elif file == '':
            flash('no select file!')
            return  redirect(request.referrer)
        else:
            flash('only .xls or .xlsx file required!')
            return redirect(request.referrer)

@app.route('/upload_down_machine_table',methods=['GET','POST'])
def upload_downmachine_table():
    if request.method == 'POST':
        file = request.files['file']
        if file and interface.allow_files(file.filename):
            filename = secure_filename(file.filename)
            if not os.path.exists(app.config['UPLOAD_FOLDER']):
                os.makedirs(app.config['UPLOAD_FOLDER'])
            file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
            filepath = os.path.join(app.config['UPLOAD_FOLDER'], filename)
            data = interface.transfer_excel_to_json2(file_name=filepath)

            if not data:
                flash('your xlsx have more sheets!')
                return redirect(request.referrer)

            table_name = interface.check_table(data[0].keys())
            if table_name != 'down_machine_table':
                flash('it not {file_name},please try again!'.format(file_name='down_machine_table'))
                return redirect(request.referrer)

            db = DBConn()
            '''
            project_number = session.get('project_number') if session.get('project_number') else ''
            cmd = "select down_machine_table from count_upload_time_table where 'project_id' = {project_number}".format(project_number=project_number)
            result = db.execute(cmd)
            upload_times = int(result[0])
            '''
            for each_record in data:
                db.insert('down_machine_table',each_record)
            '''
            upload_times += 1
            cmd = "update count_upload_time_table set down_machine_table where 'project_id' = {project_number}".format(project_number=project_number)
            result = db.execute(cmd)
            '''
            return redirect(request.referrer)
        elif file == '':
            flash('no select file!')
            return  redirect(request.referrer)
        else:
            flash('only .xls or .xlsx file required!')
            return redirect(request.referrer)

@app.route('/upload_return_table',methods=['GET','POST'])
def upload_return_table():
    if request.method == 'POST':
        file = request.files['file']
        if file and interface.allow_files(file.filename):
            filename = secure_filename(file.filename)
            if not os.path.exists(app.config['UPLOAD_FOLDER']):
                os.makedirs(app.config['UPLOAD_FOLDER'])
            file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
            filepath = os.path.join(app.config['UPLOAD_FOLDER'], filename)
            data = interface.transfer_excel_to_json2(file_name=filepath)

            if not data:
                flash('your xlsx have more sheets!')
                return redirect(request.referrer)

            table_name = interface.check_table(data[0].keys())
            if table_name != 'return_table':
                flash('it not {file_name},please try again!'.format(file_name='return_table'))
                return redirect(request.referrer)

            db = DBConn()
            '''
            project_number = session.get('project_number') if session.get('project_number') else ''
            cmd = "select return_table from count_upload_time_table where 'project_id' = {project_number}".format(project_number=project_number)
            result = db.execute(cmd)
            upload_times = int(result[0])
            '''
            for each_record in data:
                db.insert('return_table',each_record)
            '''
            upload_times += 1
            cmd = "update count_upload_time_table set return_table where 'project_id' = {project_number}".format(project_number=project_number)
            result = db.execute(cmd)
            '''
            return redirect(request.referrer)
        elif file == '':
            flash('no select file!')
            return  redirect(request.referrer)
        else:
            flash('only .xls or .xlsx file required!')
            return redirect(request.referrer)

@app.route('/upload_up_down_compare_table',methods=['GET','POST'])
def upload_updown_compare_table():
    if request.method == 'POST':
        file = request.files['file']
        if file and interface.allow_files(file.filename):
            filename = secure_filename(file.filename)
            if not os.path.exists(app.config['UPLOAD_FOLDER']):
                os.makedirs(app.config['UPLOAD_FOLDER'])
            file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
            filepath = os.path.join(app.config['UPLOAD_FOLDER'], filename)
            data = interface.transfer_excel_to_json2(file_name=filepath)

            if not data:
                flash('your xlsx have more sheets!')
                return redirect(request.referrer)

            table_name = interface.check_table(data[0].keys())
            if table_name != 'return_table':
                flash('it not {file_name},please try again!'.format(file_name='return_table'))
                return redirect(request.referrer)

            db = DBConn()
            '''
            project_number = session.get('project_number') if session.get('project_number') else ''
            cmd = "select up_down_compare_table from count_upload_time_table where 'project_id' = {project_number}".format(project_number=project_number)
            result = db.execute(cmd)
            upload_times = int(result[0])
            '''
            for each_record in data:
                db.insert('up_down_compare_table',each_record)
            '''
            upload_times += 1
            cmd = "update count_upload_time_table set up_down_compare_table where 'project_id' = {project_number}".format(project_number=project_number)
            result = db.execute(cmd)
            '''
            return redirect(request.referrer)
        elif file == '':
            flash('no select file!')
            return  redirect(request.referrer)
        else:
            flash('only .xls or .xlsx file required!')
            return redirect(request.referrer)

@app.route('/show_data',methods = ['POST','GET'])
def get_table_data():
    '''
    show data from database
    '''
    table_name = request.form.get('name')
    project_number = session.get('project_number') if session.get('project_number') else ''
    if request.method == 'POST' and table_name:
        '''
        #分页
        page = request.values.get('page') if request.values.get('page') else 1
        # show all data
        rows = request.values.get('rows') if request.values.get('page') else 100
        offset = (int(page) - 1) * int(rows)
        '''
        #排序
        sort_col = request.values.get('sort') if request.values.get('sort') else 'sample_name'
        order_type = request.values.get('order') if request.values.get('order') else 'asc'
        data = []
        i = 0
        db = DBConn()
        cmd = "select * from {table} where project_id = '{project_number}' order by {sort_col} {order}".format(
            table=table_name,
	        project_number=project_number,
            sort_col=sort_col,
            order=order_type)
        results = db.execute(cmd)
        for result in results:
            data.append(dict(result))
            i += 1
        return jsonify({'total':i,'rows':data})
    return redirect(request.referrer)

@app.route('/save_data',methods = ['GET','POST'])
def save_input_data():
    if request.method == 'POST':
        action = request.form.get('action',None)
        table_name = request.form.get('table_name',None)
        #just test two tables
        send_sample_table_dict = dict.fromkeys(['id','project_id','sample_name',
                                         'species','extract_part',
                                         'sample_number','comment','time'])
        quality_inspection_table_dict = dict.fromkeys(['id','project_id','sample_name','sample_id',
                                                       'od_260_or_230','od_260_or_280','25S_or_18S',
                                                       'rin','volume','concentration','quantum',
                                                       'database_type','judgeresult','comment','time'])
        up_machine_table_dict = dict.fromkeys(['id','project_id','sample_name',
                                               'upmachine_type','upmachine_mode','up_quant',
                                               'comment','time'])
        down_machine_table_dict = dict.fromkeys(['id','project_id','sample_name','sample_id','down_quant',
                                                 'reads','q30','comment','time'])
        return_table_dict = dict.fromkeys(['id','project_id','sample_name','species','surplus','comment','time'])
        up_down_compare_table_dict = dict.fromkeys(['id','project_id','sample_name','sample_id','upmachine_time',
                                                    'downmachine_time','down_quant','comment'])


        all_table_dicts = dict(send_sample_table=send_sample_table_dict,
                               quality_inspection_table=quality_inspection_table_dict,
                               up_machine_table=up_machine_table_dict,
                               down_machine_table=down_machine_table_dict,
                               return_table=return_table_dict,
                               up_down_compare_table=up_down_compare_table_dict)

        send_sample_row = None
        for each_table,table_content in all_table_dicts.items():
            if table_name == each_table:
                send_sample_row = all_table_dicts[each_table]
                for key,value in send_sample_row.items():
                    send_sample_row[key] = request.form.get(key,None)

        db = DBConn()
        if action == 'insert' and send_sample_row:
            db.insert(table_name, send_sample_row)
            return jsonify({'success': 'true', 'errMsg': 'error'})
        elif action == 'update' and send_sample_row:
            db.update(table_name,condition_dict={'id':send_sample_row['id']},update_dict=send_sample_row)
            return jsonify({'success': 'true', 'errMsg': 'error'})
        else:
            return jsonify({'success': 'false', 'errMsg': 'error'})
    else:
        return redirect(request.referrer)

@app.route('/destroy_sample')
def del_select_data():
    sample_name = request.args.get('id')
    sample_time = request.args.get('time')
    table_name = request.args.get('table')
    db = DBConn()
    ans = db.delete(table_name,condition_dict={'sample_name':sample_name})
    if ans:
        return jsonify({'success':'true','errMsg':'error'})
    else:
        return jsonify({'success':'false','errMsg':'del fail!'})

@app.route('/destroy_all_sample')
def destroy_all_sample():
    project_number = session.get('project_number') if session.get('project_number') else ''
    table_name = request.args.get('table')
    db = DBConn()
    ans = db.delete(table_name,condition_dict={'project_id':project_number})
    if ans:
        return jsonify({'success':'true','errMsg':'error'})
    else:
        return jsonify({'success':'false','errMsg':'del fail!'})
'''
2017-05-22 add destroy_select_sample route
'''
@app.route('/destroy_select_sample')
def destroy_select_sample():
    project_number = session.get('project_number') if session.get('project_number') else ''
    table_name = request.args.get('table')
    selected_samples = request.args.get('id')
    selected_samples_list = selected_samples.split(',')
    db = DBConn()
    if table_name == 'send_sample_table':
        for sample in selected_samples_list:
            ans = db.delete(table_name,condition_dict={'id':sample})
    else:
        for sample in selected_samples_list:
            ans = db.delete(table_name,condition_dict={'sample_id':sample})

    if ans:
        return jsonify({'success':'true','errMsg':'error'})
    else:
        return jsonify({'success':'false','errMsg':'del fail!'})
#define 404 and 500 page:
@app.errorhandler(404)
def page_not_find(e):
    return render_template('404.html'),404

@app.errorhandler(500)
def page_not_find(e):
    return render_template('500.html'),500
if __name__ == '__main__':
    app.run('192.168.0.117')
