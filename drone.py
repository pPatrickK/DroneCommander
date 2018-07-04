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

    def landWithHeight(self, height, time):
        pass

    def move(self, amount, yaw, time):
        self.moveTo(self.position + amount, self.yaw + yaw, time)

    def moveTo(self, position, yaw, time):
        self.position = position
        self.yaw = yaw

    def moveHome(self, time):
        home = Vector3D(self.home_position.x, self.home_position.y, self.position.z)
        self.moveTo(home, 0.0, time)
        print self.position

    def uploadTrajectory(self, file):
        pass

    def startTrajectory(self, TIMESCALE):
        pass
