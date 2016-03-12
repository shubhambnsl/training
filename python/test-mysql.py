#!/usr/bin/env python

import MySQLdb
# named parameter
db = MySQLdb.connect(host="localhost", user="root", password= "shubhambnsl95", db="pg1")
cursor = db.cursor()
cursor.execute(""" select 1""");
print(cursor.fetchall())