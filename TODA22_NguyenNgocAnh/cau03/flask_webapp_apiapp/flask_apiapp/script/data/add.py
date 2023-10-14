from service.envvar import ensure_envvar_DB_xx_defined
#
import pymysql; pymysql.install_as_MySQLdb()  # fix err > ModuleNotFoundError: No module named 'MySQLdb'  ref. https://stackoverflow.com/a/71730129/248616
#
from service.db.mysql import scoped_engine, dbsession
from service.db.model_class import Base, Tel4vnCourse


ensure_envvar_DB_xx_defined()

# create table if not exist
Base.metadata.create_all(scoped_engine)  # ref. https://stackoverflow.com/a/70402756/248616

l = [
    {'name': 'Docker Container',  'fee': '2,500,000₫', 'desc': 'Microservice 2', },
    {'name': 'Python for DevOps', 'fee': '5,500,000₫', 'desc': 'Tong Quan Python 2', },
]

for i,m in enumerate(l):  # m aka model_obj_dict, i aka index
    d = {
        **m,

        # add suffix clone#i from i=1,2,...
        'name': m['name']+f' clone#{i}' if i>0 else \
                m['name'],
    }
    r = Tel4vnCourse(**d)
    dbsession.add(r) ; dbsession.commit()

print(f'''
added row {len(l)}
total row {len(dbsession.query(Tel4vnCourse).all())}
'''.rstrip())
