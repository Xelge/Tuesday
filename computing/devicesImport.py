from dataImport import BaseModel
from peewee import *

class Devices(BaseModel):
    id = IntegerField(column_name = 'id', primary_key = True)
    device_mac = CharField(column_name = 'device_mac')
    rssi = IntegerField(column_name = 'rssi')
    channel = IntegerField(column_name = 'channel')
    sensor_id = IntegerField(column_name = 'sensor_id')
    band = CharField(column_name = 'band')
    
    class Meta:
        table_name = 'devices'