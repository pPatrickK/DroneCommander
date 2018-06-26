from drone import *
import numpy as np

class CrazyflieDrone(Drone):
    def __init__(self, cf, max_velocity, position = Vector2D(), yaw = 0.0):
        super(CrazyflieDrone, self).__init__(max_velocity, position, yaw)
        self.cf = cf

    def start(self, height, time):
        super(CrazyflieDrone, self).start(height, time)
        self.cf

    def land(self, time):
        super(CrazyflieDrone, self).land(time)

    def move(self, amount, yaw, time):
        super(CrazyflieDrone, self).move(amount, yaw, time)

    def moveTo(self, position, yaw, time):
        super(CrazyflieDrone, self).moveTo(position, yaw, time)
        pos = np.array([position.x, position.y, position.z])
        cf.goTo(pos, self.yaw, time)

    def moveHome(self, time):
        super(CrazyflieDrone, self).moveHome(time)
