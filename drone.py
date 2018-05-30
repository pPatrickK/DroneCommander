from vector2d import *
from drone_state import *

class Drone(object):
    def __init__(self, max_velocity, position = Vector2D()):
        self.position = position
        self.state = DroneState.GROUNDED
        self.max_velocity = max_velocity

    def start(self, height, time):
        self.state = DroneState.AIRBORNE

    def land(self, time):
        self.state = DroneState.GROUNDED

    def move(self, amount, time):
        self.position = self.position + amount

    def moveTo(self, position, time):
        self.position = position
