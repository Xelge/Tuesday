from dataImport import GetConnection
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
		truncateTable = 'TRUNCATE signal_matrix'
		cursor.execute(truncateTable)
		connection.commit()
		select_sensors = 'SELECT id, x, y, z, rx_ant_gain, mapid FROM sensors'
		cursor.execute(select_sensors)
		sensors = cursor.fetchall()
		select_walls = 'SELECT * FROM walls'
		cursor.execute(select_walls)
		walls = cursor.fetchall()

	except Exception:
		print("ERROR")
	connection.close()
    
	copy_bd_time = time.time()
	print(copy_bd_time - start_time, "seconds to copy")
	signal_matrix = []
	#print(sens[0])
	for x in range(0, i+1):
		for y in range(0, j+1):
			for sensor in sensors:
				if int(sensor[5]) == mapid:
					sensor_coordinates = [sensor[1], sensor[2], sensor[3]]
					distance = find_distance(sensor_coordinates, x, y, hC, cell)
					
					if distance < 40.0:
						loss_24 = find_loss(f_24, D_24, distance, p)
						loss_5 = find_loss(f_5, D_5, distance, p)
						S_24 = 0
						S_5 = 0
						
						for wall in walls:
							if wall[3] == mapid: #ВРЕМЕННО!
								wall_coordinates = [wall[7], wall[8], wall[9], wall[10]]
								if(find_factors(sensor_coordinates, wall_coordinates, x, y, cell)):
									angle_24 = find_angle(sensor_coordinates, wall_coordinates, x, y, cell)
									angle_5 = find_angle(sensor_coordinates, wall_coordinates, x, y, cell)
									S_24 += find_thickness(angle_24, wall[4], wall[6])
									S_5 += find_thickness(angle_5, wall[4], wall[6]) #atten5 = NULL, use atten24
									
						rx_24 = round(find_rx(db, dbiC1, sensor[4], loss_24, S_24), 2)
						rx_5 = round(find_rx(db, dbiC1, sensor[4], loss_5, S_5), 2)

						if rx_24 < -85:
							rx_24 = -100
						if rx_5 < -85:
							rx_5 = -100
					else:
						rx_24 = -100
						rx_5 = -100
						
					row = [x*cell, y*cell, sensor[0], rx_24, rx_5]
					signal_matrix.append(row)

	write_time = time.time() 
	print(write_time - copy_bd_time, "seconds for calculations")           
	connection = GetConnection()
	try:
		cursor = connection.cursor()
		insert = 'INSERT INTO signal_matrix (x, y, sensor_id, Rx_24, Rx_5) VALUES (%s, %s, %s, %s, %s)'
		cursor.executemany(insert, signal_matrix)
		connection.commit()
	except Exception:
		print("ERROR")
	print(time.time() - write_time, "seconds to write")
	print("\n--- %s seconds ---" % (time.time() - start_time))
	connection.close()
 

if __name__ == '__main__':
	main(lenght=100, width=108, mapid=1)
