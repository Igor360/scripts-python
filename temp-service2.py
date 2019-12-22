import time
import datetime
import glob
import MySQLdb
import Adafruit_DHT
from time import strftime
 

code = 'dth11-temp'

#Variables for sensor
DHT_SENSOR = Adafruit_DHT.DHT11
DHT_PIN = 21

# Variables for MySQL
db = MySQLdb.connect(host="localhost", user="admin",passwd="password", db="HN_database")
cur = db.cursor()
 
def tempRead():
    humidity, temperature = Adafruit_DHT.read(DHT_SENSOR, DHT_PIN)
    if temperature is not None and humidity is not None:
        return round(temperature, 1), round(humidity, 1)
    else:
        return None
 

while True:    
    temp = tempRead()
    if temp is None:
	continue
    print temp
    temp1, humidity = temp
    datetimeWrite = (time.strftime("%Y-%m-%d ") + time.strftime("%H:%M:%S"))
    print datetimeWrite
    sql = ("""INSERT INTO sensor_data (created_at,value, name, code) VALUES (%s, %s, %s, %s)""",(datetimeWrite, temp1, 'temperature', code))
    sql2 = ("""INSERT INTO sensor_data (created_at,value, name, code) VALUES (%s, %s, %s, %s)""",(datetimeWrite, humidity, 'hudaminity', code))
    try:
        print "Writing to database..."
        # Execute the SQL command
        cur.execute(*sql)
        cur.execute(*sql2)
        db.commit()
        print "Write Complete"

    except:
        # Rollback in case there is any error
        db.rollback()
        print "Failed writing to database"
 
    cur.close()
    db.close()
    time.sleep(30)
