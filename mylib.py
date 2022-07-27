import  pymysql

def make_connection():
    cn=pymysql.connect(host="localhost",port=3306,user="root",passwd="",db="fee",autocommit=True)
    cur=cn.cursor()
    return cur

def check_photo(email):
    cur=make_connection()
    cur.execute("SELECT * FROM photo_data where email='"+email+"'")
    n=cur.rowcount
    photo="no"
    if(n>0):
        row=cur.fetchone()
        photo=row[1]
    return photo

def get_admin_name(email):
    cur=make_connection()
    cur.execute("SELECT * FROM admin_data where email='"+email+"'")
    n=cur.rowcount
    name="no"
    if(n>0):
        row=cur.fetchone()
        name=row[0]
    return name

def get_accountant_name(email):
    cur=make_connection()
    cur.execute("SELECT * FROM accountant where email='"+email+"'")
    n=cur.rowcount
    name="no"
    if(n>0):
        row=cur.fetchone()
        name=row[1]
    return name

#Student  pic
def check_pic(reg):
    cur=make_connection()
    cur.execute("SELECT * FROM st_data where email='"+reg+"'")
    n=cur.rowcount
    photo="no"
    if(n>0):
        row=cur.fetchone()
        photo=row[5]
    return photo

#find course total of  student
def total_fee(regno):
    cur=make_connection()
    cur.execute("SELECT * FROM st_course where reg_no='"+regno+"'")
    n=cur.rowcount
    t=0
    if(n>0):
        data=cur.fetchall()
        for d in data:
            t=t+d[3]
    return t

#find  total of installment of deposited
def total_installments(regno):
    cur=make_connection()
    cur.execute("SELECT * FROM st_fee where reg_no='"+regno+"'")
    n=cur.rowcount
    t=0
    if(n>0):
        data=cur.fetchall()
        for d in data:
            t=t+d[3]
    return t
