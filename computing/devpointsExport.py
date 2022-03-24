from dataImport import BaseModel
from peewee import *

class Devpoints(BaseModel):
    id = IntegerField(column_name = 'id', primary_key = True)
    device_mac = CharField(column_name = 'device_mac')
    x = FloatField(column_name = 'x')
    y = FloatField(column_name = 'y')
    loctime = DateTimeField(column_name = 'loctime')

    class Meta:
        table_name = 'devpoints'

def insertPoint(device_mac, x, y, loctime):
    insert = dict(x = x, y = y, device_mac = device_mac, loctime = loctime)
    Devpoints.insert_many(insert).execute()