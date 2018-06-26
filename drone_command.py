from enum import Enum
from vector2d import *

class DroneCommandType(Enum):
    START = 1
    LAND = 2
    MOVE = 3
    MOVETO = 4
    MOVEHOME = 5

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

class DroneMoveCommand(DroneTimedCommand):
    def __init__(self, start, time, amount, yaw_amount):
        super(DroneMoveCommand, self).__init__(DroneCommandType.MOVE, start, time)
        self.amount = amount
        self.yaw_amount = yaw_amount

    def __str__(self):
        return self.toString()

    def toString(self):
        return super(DroneMoveCommand, self).toString() + "amount of: " + self.amount.toString() + + " yaw amount of: " + str(self.yaw_amount) + "\n"

class DroneMoveToCommand(DroneTimedCommand):
    def __init__(self, start, time, position, yaw):
        super(DroneMoveToCommand, self).__init__(DroneCommandType.MOVETO, start, time)
        self.position = position
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
