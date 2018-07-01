from enum import Enum
from vector3d import *
import json
import datetime

class DroneCommandType(Enum):
    START = 1
    LAND = 2
    MOVE = 3
    MOVETO = 4
    MOVEHOME = 5
    LANDWITHHEIGHT = 6

class DroneCommand(object):
    def __init__(self, type, start):
        self.type = type
        self.start = start

    def toString(self):
        return "command type: " + str(self.type) + "\nstarting at: " + str(self.start) + "\n"

class DroneTimedCommand(DroneCommand):
    def __init__(self, type, start, time):
        super(DroneTimedCommand, self).__init__(type, start)
        self.time = time
        self.end = self.start + self.time

    def __str__(self):
        return self.toString()

    def toString(self):
        return super(DroneTimedCommand, self).toString() + "ending at: " + str(self.end) + "\ntime for command: " + str(self.time) + "\n"

class DroneStartCommand(DroneTimedCommand):
    def __init__(self, start, time, height):
        super(DroneStartCommand, self).__init__(DroneCommandType.START, start, time)
        self.height = height

    def __str__(self):
        return self.toString()

    def toString(self):
        return super(DroneStartCommand, self).toString() + "height of: " + str(self.height) + "\n"

class DroneLandCommand(DroneTimedCommand):
    def __init__(self, start, time):
        super(DroneLandCommand, self).__init__(DroneCommandType.LAND, start, time)

    def __str__(self):
        return self.toString()

    def toString(self):
        return super(DroneLandCommand, self).toString()

class DroneLandWithHeightCommand(DroneTimedCommand):
    def __init__(self, start, time, height):
        super(DroneLandWithHeightCommand, self).__init__(DroneCommandType.LANDWITHHEIGHT, start, time)
        self.height = height

    def __str__(self):
        return self.toString()

    def toString(self):
        return super(DroneLandWithHeightCommand, self).toString() + "height of: " + str(self.height) + "\n"

class DroneMoveCommand(DroneTimedCommand):
    def __init__(self, start, time, amount, yaw_amount):
        super(DroneMoveCommand, self).__init__(DroneCommandType.MOVE, start, time)
        self.amount = vector3d_from_list_or_instance(amount)
        self.yaw_amount = yaw_amount

    def __str__(self):
        return self.toString()

    def toString(self):
        return super(DroneMoveCommand, self).toString() + "amount of: " + self.amount.toString() + " yaw amount of: " + str(self.yaw_amount) + "\n"

class DroneMoveToCommand(DroneTimedCommand):
    def __init__(self, start, time, position, yaw):
        super(DroneMoveToCommand, self).__init__(DroneCommandType.MOVETO, start, time)
        self.position = vector3d_from_list_or_instance(position)
        self.yaw = yaw

    def __str__(self):
        return self.toString()

    def toString(self):
        return super(DroneMoveToCommand, self).toString() + "position: " + self.position.toString() + " yaw: " + str(self.yaw) + "\n"

class DroneMoveHomeCommand(DroneTimedCommand):
    def __init__(self, start, time):
        super(DroneMoveHomeCommand, self).__init__(DroneCommandType.MOVEHOME, start, time)

    def __str__(self):
        return self.toString()

    def toString(self):
        return super(DroneMoveHomeCommand, self).toString()

def make_command(drone_id, TYPE, *args):
    return (drone_id, TYPE(*args))

def make_command_from_json(TYPE, json_data, add_server_start_time=False):
    python_data = json.loads(json_data)
    id = python_data['id']
    data = python_data['data']
    # if add_server_start_time:
        # data[0] += datetime.datetime.now() # try, bug?
    return make_command(id, TYPE, *data)

def make_command_from_string(text):
    python_data = json.loads(text)
    type = python_data['type']
    if type == 'start':
        return make_command_from_json(DroneStartCommand, text)
    elif type == 'land':
        return make_command_from_json(DroneLandCommand, text)
    elif type == 'move':
        return make_command_from_json(DroneMoveCommand, text)
    elif type == 'moveTo':
        return make_command_from_json(DroneMoveToCommand, text)
    elif type == 'moveHome':
        return make_command_from_json(DroneMoveHomeCommand, text)
