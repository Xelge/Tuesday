from math import sqrt, log10

def find_rx(db, dbiC, dbiAP, Loss, S):
    Rx = db + dbiC + dbiAP - Loss - S
    return Rx

def find_distance(sensor, x, y, z, cell):
    distance = sqrt(pow((x * cell - sensor[0]), 2) + pow((y * cell - sensor[1]), 2))
    #test = sqrt(pow((distance), 2) + pow((sensor[2] - z*cell), 2)) #z заполнить
    return distance

def find_loss(f, D, distance, p):
    if distance < 1:   
        Loss = 20 * log10(f) + 10 * D * log10(1) + p - 24
    else:
        Loss = 20 * log10(f) + 10 * D * log10(distance) + p - 24
    return Loss
