from drone import *
import numpy as np
import  copy as copy

class CrazyflieDrone(object):
    def __init__(self, cf, max_velocity, position = Vector3D(), yaw = 0.0):
        self.home_position = position
        self.position = copy.deepcopy(self.home_position)
        self.max_velocity = max_velocity
        self.yaw = yaw
        self.cf = cf
        print self.position

    def start(self, height, time):
        self.cf.takeoff(targetHeight=height, duration=time)

    def land(self, time):
        self.cf.land(targetHeight=0.02, duration=time)

    def move(self, amount, yaw, time):
        self.moveTo(self.position + amount, self.yaw + yaw, time)

    def moveTo(self, position, yaw, time):
        self.position = position
        self.yaw = yaw
        pos = np.array([self.position.x, self.position.y, self.position.z])
        self.cf.goTo(pos, self.yaw, time)

    def moveHome(self, time):
        home = Vector3D(self.home_position.x, self.home_position.y, self.position.z)
        self.moveTo(home, 0.0, time)
