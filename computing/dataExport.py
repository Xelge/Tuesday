from dataImport import BaseModel
from peewee import *

class Signal_Matrix(BaseModel):
    x = FloatField(column_name = 'x')
    y = FloatField(column_name = 'y')
    #z = FloatField(column_name = 'z')
    sensor_id = IntegerField(column_name = 'sensor_id')
    Rx_24 = FloatField(column_name = 'Rx_24')
    Rx_5 = FloatField(column_name = 'Rx_5')

    class Meta:
        table_name = 'signal_matrix'
