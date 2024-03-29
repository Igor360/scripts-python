import os
import time
import datetime
import glob
import MySQLdb
from time import strftime
 
os.system('modprobe w1-gpio')
os.system('modprobe w1-therm')
temp_sensor = '/sys/bus/w1/devices/28-02109245a8f8/w1_slave'
 

name = 'temperature'
code = 'w1-temp'

# Variables for MySQL
db = MySQLdb.connect(host="localhost", user="admin",passwd="password", db="HN_database")
cur = db.cursor()
 
def tempRead():
    try:
        t = open(temp_sensor, 'r')
        lines = t.readlines()
        t.close()
        temp_output = lines[1].find('t=')
        if temp_output != -1:
            temp_string = lines[1].strip()[temp_output+2:]
            temp_c = float(temp_string)/1000.0
        return round(temp_c,1)
    except:
        return None

while True:
    temp = tempRead()
    if temp is None:
        continue
    datetimeWrite = (time.strftime("%Y-%m-%d ") + time.strftime("%H:%M:%S"))
    print datetimeWrite
    sql = ("""INSERT INTO sensor_data (created_at,value, name, code) VALUES (%s, %s, %s, %s)""",(datetimeWrite, temp, name, code))
    try:
        print "Writing to database..."
        # Execute the SQL command
        cur.execute(*sql)
        # Commit your changes in the database
        db.commit()
        print "Write Complete"
    except:
        # Rollback in case there is any error
        db.rollback()
        print "Failed writing to database"
    cur.close()
    db.close()
    time.sleep(30)

