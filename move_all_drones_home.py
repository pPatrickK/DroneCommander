from numpy import dot,array,empty_like
from matplotlib.path import Path
from vector2d import *
import copy

def make_path(x1,y1,x2,y2):
    return Path([[x1,y1],[x1,y2],[x2,y2],[x2,y1]])

def perp( a ) :
    b = empty_like(a)
    b[0] = -a[1]
    b[1] = a[0]
    return b

# line segment a given by endpoints pos1, home1
# line segment b given by endpoints pos2, home2
# return
def seg_intersect(pos1,home1, pos2,home2) :
    a1 = array(pos1)
    a2 = array(home1)
    b1 = array(pos2)
    b2 = array(home2)
    da = a2-a1
    db = b2-b1
    dp = a1-b1
    dap = perp(da)
    denom = dot( dap, db)
    num = dot( dap, dp )

    x3 = ((num / denom.astype(float))*db + b1)[0]
    y3 = ((num / denom.astype(float))*db + b1)[1]
    p1 = make_path(a1[0],a1[1],a2[0],a2[1])
    p2 = make_path(b1[0],b1[1],b2[0],b2[1])
    if p1.contains_point([x3,y3]) and p2.contains_point([x3,y3]):
        return True
    else:
        return False

def get_home_line(drone):
    return Line(Vector2D(drone.position.x, drone.position.y), Vector2D(drone.home_position.x, drone.home_position.y))

class Line(object):
    def __init__(self, Vector2D start, Vector2D end):
        self.start = start
        self.end = end

    def doCollide(self, other):
        return seg_intersect([self.start.x, self.start.y], [self.end.x, self.end.y], [other.start.x, other.start.y], [other.end.x, other.end.y])

    def length(self):
        distance_vector = self.start - self.end
        return distance_vector.length()

def get_keys(dictionary):
    return dictionary.keys()

def get_potential_colliding_drones(drones):
    result = []
    drone_keys = get_keys(drones)
    number_of_drones = len(drone_keys)
    for i in range(number_of_drones - 1):
        key_1 = drone_keys[i]
        drone_1 = drones[key_1]
        drone_1_movement_line = get_home_line(drone_1)
        for j in range(i + 1, number_of_drones):
            key_2 = drone_keys[j]
            drone_2 = drones[key_2]
            drone_2_movement_line = get_home_line(drone_2)
            if drone_1_movement_line.doCollide(drone_2_movement_line):
                result.append((key_1, key_2))
    return result

def get_non_colliding_drones(drones, potential_colliding_drones):
    drones = copy.copy(drones)
    for (d0, d1) in potential_colliding_drones:
        drones.pop(d0)
        drones.pop(d1)
    return get_keys(drones)

def make_move_home_list(drones, land_height, droneCommander=None):
    time_delta = 0.1
    time_landing = 3.0
    commands = []
    time_offset = 0.0
    if droneCommander != None:
        time_offset = droneCommander.start_time
    drones = copy.copy(drones)
    while len(drones) > 0:
        colliding_drones = get_potential_colliding_drones(drones)
        non_colliding_drones = get_non_colliding_drones(drones, colliding_drones)
        if len(non_colliding_drones) == 0: # of no potential candidates, take one random
            non_colliding_drones = [drones[0]]
        print non_colliding_drones
        for id in non_colliding_drones:
            time = get_home_line(drone).length() # m/s
            commands.append((id, make_command(id, DroneMoveHomeCommand, offset, time)))
            offset += time + time_delta
            commands.append((id, make_command(id, DroneLandWithHeightCommand, offset, time_landing, land_height)))
            offset += time_landing + time_delta
            drones.pop(id)
    return commands
