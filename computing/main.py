from dataImport import *
from dataExport import *
from intersection import *
from compute import *
import time

def main(lenght, width, mapid):
	dbiC1 = 0.0 #The gain of the transmitting antenna
	db = 16 #The transmitter signal power
	hC = 1
	cell = 0.25
	D_24 = 2.5
	D_5 = 3
	f_24 = 2437 # 6 channel
	f_5 = 5260 # 52 channel
	p = 6
	
	i = int(lenght/cell)
	j = int(width/cell)
	start_time = time.time()

	connection = GetConnection()
	
	try:
		cursor = connection.cursor()
		create = 'CREATE TABLE IF NOT EXISTS signal_matrix_%s (id int primary key AUTO_INCREMENT, x float, y float, sensor_id int, Rx_24 float, Rx_5 float)'
		truncateTable = 'TRUNCATE signal_matrix_%s'
		cursor.execute(create, (mapid))
		cursor.execute(truncateTable, (mapid))
		connection.commit()
	except Exception:
		print("ERROR")
    
	SensorsDict = tableDict(Sensors.select())
	WallsDict = tableDict(Walls.select())
	connection.close()
    
	copy_bd_time = time.time()
	print(copy_bd_time - start_time, "seconds to copy")
	signal_matrix = []

	for x in range(0, i+1):
		for y in range(0, j+1):
			for sensor in SensorsDict:
				if sensor['mapid'] == mapid:
					sensor_coordinates = [sensor['x'], sensor['y'], sensor['z']]
					distance = find_distance(sensor_coordinates, x, y, hC, cell)
					
					if distance < 40.0:
						loss_24 = find_loss(f_24, D_24, distance, p)
						loss_5 = find_loss(f_5, D_5, distance, p)
						S_24 = 0
						S_5 = 0
						
						for wall in WallsDict:
							if wall['mapid'] == mapid: #ВРЕМЕННО!
								wall_coordinates = [wall['x1'], wall['y1'], wall['x2'], wall['y2']]
								if(find_factors(sensor_coordinates, wall_coordinates, x, y, cell)):
									angle_24 = find_angle(sensor_coordinates, wall_coordinates, x, y, cell)
									angle_5 = find_angle(sensor_coordinates, wall_coordinates, x, y, cell)
									S_24 += find_thickness(angle_24, wall['atten24'], wall['thick'])
									S_5 += find_thickness(angle_5, wall['atten24'], wall['thick']) #atten5 = NULL, use atten24
									
						rx_24 = round(find_rx(db, dbiC1, sensor['rx_ant_gain'], loss_24, S_24), 2)
						rx_5 = round(find_rx(db, dbiC1, sensor['rx_ant_gain'], loss_5, S_5), 2)

						if rx_24 < -85:
							rx_24 = -100
						if rx_5 < -85:
							rx_5 = -100
					else:
						rx_24 = -100
						rx_5 = -100
						
					row = [mapid, x*cell, y*cell, sensor['id'], rx_24, rx_5]
					signal_matrix.append(row)

	write_time = time.time() 
	print(write_time - copy_bd_time, "seconds for calculations")           
	connection = GetConnection()
	try:
		cursor = connection.cursor()
		insert = 'INSERT INTO signal_matrix_%s (x, y, sensor_id, Rx_24, Rx_5) VALUES (%s, %s, %s, %s, %s)'
		cursor.executemany(insert, signal_matrix)
		connection.commit()
	except Exception:
		print("ERROR")
	print(time.time() - write_time, "seconds to write")
	print("\n--- %s seconds ---" % (time.time() - start_time))
	connection.close()
 

if __name__ == '__main__':
	main(lenght=100, width=108, mapid=1)
