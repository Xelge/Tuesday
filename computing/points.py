from dataImport import GetConnection
import time, datetime

def points(mac, fault):
    start_time = time.time()
    loctime = datetime.datetime.now()
    connection = GetConnection()

    def write_points(i):
        try:
            cursor = connection.cursor()
            TruncateTable = 'TRUNCATE devpoints'
            select = 'INSERT INTO devpoints(x, y, device_mac, loctime) SELECT signal_matrix.x, signal_matrix.y , devices.device_mac, %s FROM signal_matrix JOIN devices ON signal_matrix.sensor_id = devices.sensor_id and devices.device_mac = %s and (devices.rssi - %s) between (signal_matrix.Rx_24 - %s) and (signal_matrix.Rx_24 + %s);'
            if_select = 'SELECT MAX(id) FROM devpoints'
            cursor.execute(TruncateTable)
            connection.commit()
            cursor.execute(select, (loctime, mac, i, fault, fault))
            connection.commit()
            cursor.execute(if_select)
            num_of_points = cursor.fetchone()[0]
            if num_of_points == None: 
                num_of_points = 0
        except Exception:
            print("ERROR")
        return num_of_points

    num_of_points = int(write_points(0))
    print(num_of_points)
    i = 5
    while num_of_points < 15:    
        num_of_points = write_points(i)
        print(num_of_points)
        i +=5

    print("\n--- %s seconds ---" % (time.time() - start_time))

if __name__ == '__main__':
    points(mac='3c:84:6a:0d:98:49', fault=0)
    #points(mac='3c:84:6a:0d:98:49', fault=1)
    #points(mac='3e:71:63:41:03:1f', fault=0.5)