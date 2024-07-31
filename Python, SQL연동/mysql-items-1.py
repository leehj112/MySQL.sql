# -*- coding: utf-8 -*-

# MySQL
# pip install mysqlclient

# 라이브러리 읽어 들이기 --- (※1)
import MySQLdb

# MySQL 연결하기 --- (※2)
conn = MySQLdb.connect(
    user='root',
    passwd='solsql',
    host='localhost',
    db='hellodb')

# 커서 추출하기 --- (※3)
cur = conn.cursor()

# 테이블 생성하기 --- (※4)
cur.execute('DROP TABLE IF EXISTS items')
cur.execute('''
    CREATE TABLE items (
        item_id INTEGER PRIMARY KEY AUTO_INCREMENT,
        name TEXT,
        price INTEGER
    )
    ''')

# 데이터 추가하기 --- (※5)
datum = [('Banana', 300),('Mango', 640), ('Kiwi', 280)]
for data in datum:
    cur.execute("INSERT INTO items(name,price) VALUES(%s,%s)", data)

# 데이터 추출하기 --- (※6)
cur.execute("SELECT * FROM items")
for row in cur.fetchall():
    print(row)

conn.commit()
conn.close()
