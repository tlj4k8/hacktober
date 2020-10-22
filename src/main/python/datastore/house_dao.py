import pymysql
from src.main.python.config import configuration

def get_all_houses():
    configs = configuration.fetch_database_configs(configuration.DEVELOPMENT_CONFIG_FILE_PATH)
    connection = pymysql.connect(host=configs['host'],
                                 user=configs['user'],
                                 password=configs['password'],
                                 db=configs['database'])

    try:
        cur = connection.cursor()
        cur.execute("select * from house limit 10")
        return cur.fetchall()
    finally:
        connection.close()


if __name__ == '__main__':
    get_all_houses()
