from math import sqrt, acos, pi, sin, radians

def find_factors(sensor, wall, x, y, cell):
	x1, y1 = sensor[0], sensor[1]
	x2, y2 = x*cell, y*cell
	x3, y3 = wall[0], wall[1]
	x4, y4 = wall[2], wall[3]
	
	A1 = y1 - y2
	B1 = x2 - x1
	C1 = x1*y2 - x2*y1
	A2 = y3 - y4
	B2 = x4 - x3
	C2 = x3*y4 - x4*y3
	#D = B1*B2 + A1*A2

	if B1*A2 - B2*A1 and A1:
		#angle = int(acos(D/sqrt(pow(A1,2) + pow(B1,2))/sqrt(pow(A2,2)+pow(B2,2))) * 180 / pi)
		# if angle >= 90 :
		# 	angle = abs(180 - int(acos(D/sqrt(pow(A1,2) + pow(B1,2))/sqrt(pow(A2,2)+pow(B2,2))) * 180 / pi))
		y = (C2*A1 - C1*A2) / (B1*A2 - B2*A1)
		x = (-C1 - B1*y) / A1

		if float(min(x3, x4) <= x <= max(x3, x4)) and float(min(x1,x2) <= x <= max(x1,x2)) and float(min(y3, y4) <= y <= max(y3, y4)) and float(min(y1,y2) <= y <= max(y1,y2)):
			#print("Intersection(2) ", round(x,2), ":", round(y,2), " ANGLE: ", angle)
			return True

	elif B1*A2 - B2*A1 and A2:
		#angle = int(acos(D/sqrt(pow(A1,2) + pow(B1,2))/sqrt(pow(A2,2)+pow(B2,2))) * 180 / pi)
		y = (C2*A1 - C1*A2) / (B1*A2 - B2*A1)
		x = (-C2 - B2*y) / A2

		if float(min(x3, x4) <= x <= max(x3, x4)) and float(min(x1,x2) <= x <= max(x1,x2)) and float(min(y3, y4) <= y <= max(y3, y4)) and float(min(y1,y2) <= y <= max(y1,y2)):
			#print("Intersection(2) ", round(x,2), ":", round(y,2), " ANGLE: ", angle)
			return True
	else:
		return(False)

def find_angle(sensor, wall, x, y, cell):
	
	A1 = sensor[1] - y*cell
	B1 = x*cell - sensor[0]
	A2 = wall[1] - wall[3]
	B2 = wall[2] - wall[0]
	D = B1*B2 + A1*A2
	
	angle = acos(D/sqrt(pow(A1,2) + pow(B1,2))/sqrt(pow(A2,2)+pow(B2,2)))*180/pi
	return angle

def find_thickness(angle, S, thickness):
	new_thickness = thickness/sin(radians(angle))
	new_S = S*(new_thickness/thickness)
	return new_S
