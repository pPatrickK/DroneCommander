from vector2d import *

class Drone(object):
    def __init__(self, max_velocity, position = Vector2D()):
        self.home_position = position
        self.position = self.home_position
        self.max_velocity = max_velocity

    def start(self, height, time):
        pass

    def land(self, time):
        pass

    def move(self, amount, time):
        self.moveTo(self.position + amount)

    def moveTo(self, position, time):
        self.position = position

    def moveHome(self, time):
        self.moveTo(self.home_position)
