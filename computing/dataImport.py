from peewee import *

def GetConnection():
	connection = MySQLDatabase(host = 'localhost',
		user = 'root',
		password = 'Ltymdfhtymz28223!',
		database = 'power',
		charset = 'utf8mb4')
	return connection

class BaseModel(Model):
	id = CharField(primary_key = True)
	class Meta:
		database = GetConnection()

class Sensors(BaseModel):
	id = IntegerField(column_name = 'id', primary_key = True)
	x = IntegerField(column_name = 'x')
	y = IntegerField(column_name = 'y') 
	z = IntegerField(column_name = 'z')
	rx_ant_gain = FloatField(column_name = 'rx_ant_gain') 
	mapid = IntegerField(column_name = 'mapid')

	class Meta:
		table_name = 'sensors'

class Walls(BaseModel):
	x1 = IntegerField(column_name = 'x1')
	y1 = IntegerField(column_name = 'y1')
	x2 = IntegerField(column_name = 'x2')
	y2 = IntegerField(column_name = 'y2')
	thick = FloatField(column_name = 'thick')
	atten24 = FloatField(column_name = 'atten24')
	atten5 = FloatField(column_name = 'atten5')
	mapid = IntegerField(column_name = 'mapid')

	class Meta:
		table_name = 'walls'

def tableDict(query):
	d = []
	for item in query.dicts():
		d.append(item)
	return d

def table(query):
	d = []
	for item in query:
		d.append(item)
	return d

def PrintDB(query):
	for item in query.dicts():
		print(item)

