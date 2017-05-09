#coding=utf-8
import sys
import traceback
import sqlalchemy
from sqlalchemy import create_engine, Table

reload(sys)
sys.setdefaultencoding('utf8')

class DBInterfaceError(Exception):
    pass


class DBConn(object):
    """DB connection class.

    Args:
        db_name (str): Default=SEQ_SA_INFO
    """

    def __init__(self, db_name='SEQ_SA_INFO'):
        self._db_name = db_name
        self._engine = self._get_engine()
        self._connection = self._engine.connect()
        self._transaction = self._connection.begin()

    def __del__(self):
        self._transaction.commit()
        self._connection.close()

    def get_connect(self):
        return self._connection

    def _get_engine(self):
        engine = create_engine('mysql+pymysql://{user}:{pass_wd}@{host}/{db}?charset={charset}'.format(
            user='root',
            pass_wd='20085966',
            host='localhost',
            db='SEQ_SAM_INFO',
            charset='utf8'),
            echo=False)
        return engine

    def transaction(self):

        return self._transaction

    def execute(self, cmd, get_all=True):
        """
        Execute a sql and return result, fetch one if not get_all.
        :param cmd: str, raw sql string.
        :param get_all: boolean. True if want to fetch all else fetch one.
        :return: Fetch all if get_all else fetch one.
        """
        try:
            result = self._connection.execute(cmd)
            try:
                result = result.fetchall() if get_all else result.fetchone()
            except Exception, e:
                result = result.rowcount
            return result
        except Exception, ex:
            self._connection.close()
            raise DBInterfaceError(ex)

    def insert(self, table_name, data_dict):
        """
        Insert data_dict to table_name.
        :param table_name: str, table to insert into.
        :param data_dict: dict, {key: value} for insert.
        :return: primary keys of inserted elements if insert successfully.
        """
        try:
            table = Table(table_name, sqlalchemy.MetaData(), autoload=True, autoload_with=self._engine)
            stmt = table.insert().values(**data_dict)
            result = self._connection.execute(stmt)
            return result.inserted_primary_key[0]
        except Exception, ex:
            self._connection.close()
            raise DBInterfaceError(ex)

    def update(self, table_name, condition_dict, update_dict):
        """
        Update table_name by update_dict where condition_dict.
        :param table_name: str, table to update.
        :param condition_dict: dict, update condition.
        :param update_dict: dict, {key: value} for update.
        :return: Updated rows count.
        """
        try:
            table = Table(table_name, sqlalchemy.MetaData(), autoload=True, autoload_with=self._engine)
            stmt = table.update().values(**update_dict)
            for key, value in condition_dict.items():
                if key in table.c:
                    where_column = table.c[key]
                    stmt = stmt.where(where_column == value)
            result = self._connection.execute(stmt)
            return result.rowcount
        except Exception, ex:
            self._connection.close()
            raise DBInterfaceError(ex)

    def delete(self, table_name, condition_dict):
        """
        Delete from table_name where condition_dict.
        :param table_name: str, table to delete from.
        :param condition_dict: dict, delete condition.
        :return: Deleted rows count.
        """
        try:
            table = Table(table_name, sqlalchemy.MetaData(), autoload=True, autoload_with=self._engine)
            stmt = table.delete()
            for key, value in condition_dict.items():
                if key in table.c:
                    where_column = table.c[key]
                    stmt = stmt.where(where_column == value)
            result = self._connection.execute(stmt)
            return result.rowcount
        except Exception, ex:
            self._connection.close()
            raise DBInterfaceError(ex)

if __name__ == '__main__':
    #for test a whole project:
    db = DBConn()
    #insert
    info = {
            'project_number':'OM-dna-20170417-t',
            'project_name':u'外显子捕获建库测序',
            'cust_user':u'小麦所',
            'cust_organization':u'四川农业大学',
            'sp_sum':'100',
            'status':u'准备送样',
            'create_time':'2017-4-17',
            'project_log':''}
    print db.insert('sample_project_master', info)
    print db.execute('select * from sample_project_master')
    #update

