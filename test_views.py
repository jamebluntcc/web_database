#coding=utf-8
import os
import sys
import xlrd
from werkzeug.utils import secure_filename
from flask import Flask,render_template,request,url_for,flash,redirect,jsonify
#from interface import transfer_excel_to_json
reload(sys)
sys.setdefaultencoding('utf8')

UPLOAD_FOLDER = os.path.join(os.path.dirname(__file__),'uploads')
ALLOWED_EXTENSIONS = ['xls','xlsx']

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
app.config['SECRET_KEY'] = 'chencheng'
'''
def transfer_table_title(table_title):
    title_map = {
        '任单编号': 'any_single_num',
        '样品编号': 'sample_number',
        '样品名称': 'sample_name',
        '文库名称': 'library_name',
        'Index序号': 'index_num',
        'Index序列': 'index_sequence',
        '文库类型': 'library_type',
        '文库切胶长度': 'length_of_gel',
        '片段长度(bp)': 'fragment_length',
        '文库体积(ul)': 'library_volume',
        '数据量（raw data）': 'data_size',

        'WGCID': 'wg_cid',
        'LibID': 'lib_id',
        'SampleType': 'sample_type',
        'qRCB': 'q_rcb',
        'volume': 'volume',
        'OD': 'od',
        'RIN': 'rin',
        'LibSize': 'lib_size',
        'Quality': 'qty',

        'Original Sample Name': 'original_sample_name',
        'Project ID': 'project_id_e',
        'Yield': 'yield',
        'Reads': 'reads'

    }
    for index, title in enumerate(table_title):
        if '数据量' in title:
            title = '数据量（raw data）'

        if str(title) in title_map.keys():
            table_title[index] = title_map[str(title)]

    return table_title
'''
def transfer_excel_to_json(file_name):
    data = xlrd.open_workbook(file_name)
    sheets = data.sheet_names()
    if len(sheets) != 1:
        return 'error'

    table_data = []
    for sheet in sheets:
        table = data.sheet_by_name(sheet)
        n_rows = table.nrows
        n_cols = table.ncols
        table_title = table.row_values(0)
        #table_title = transfer_table_title(table_title)
        for i in range(1, n_rows):
            table_data.append(dict(zip(table_title, table.row_values(i))))

    return table_data

def allow_files(filename):
    return '.' in filename and filename.rsplit('.',1)[1].lower() in ALLOWED_EXTENSIONS

@app.route('/',methods=['GET','POST'])
def upload_file():
    #filepath = None
    if request.method == 'POST':
        if 'file' not in request.files:
            flash('no file part')
            return redirect('/')
        file = request.files['file']
        if file.filename == '':
            flash('no select file')
            return redirect('/')
        if file and allow_files(file.filename):
            filename = secure_filename(file.filename)
            if not os.path.exists(app.config['UPLOAD_FOLDER']):
                os.makedirs(app.config['UPLOAD_FOLDER'])
            file.save(os.path.join(app.config['UPLOAD_FOLDER'],filename))
            filepath = os.path.join(app.config['UPLOAD_FOLDER'],filename)
            redirect(url_for('show_table',filename=filepath))
            #return jsonify({'data':data})

    return render_template('test_upload.html')

@app.route('/show_data',methods=['GET','POST'])
def show_table():
    filepath = request.args.get('filename')
    if os.path.exists(filepath):
        data = transfer_excel_to_json(file_name=filepath)
        if data == 'error':
            return redirect(url_for('upload_file'))

        return jsonify({'data':data})

    return redirect(url_for('upload_file'))

if __name__ == '__main__':
    app.run()







