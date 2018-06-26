from vector3d import *

class Drone(object):
    def __init__(self, max_velocity, position = Vector3D(), yaw = 0.0):
        self.home_position = position
        self.position = self.home_position
        self.max_velocity = max_velocity
        self.yaw = yaw

    def start(self, height, time):
        pass

    def land(self, time):
        pass

    def move(self, amount, yaw, time):
        self.moveTo(self.position + amount, self.yaw + yaw, time)

    def moveTo(self, position, yaw, time):
        self.position = position
        self.yaw = yaw

    def moveHome(self, time):
        self.moveTo(self.home_position, 0.0, time)
