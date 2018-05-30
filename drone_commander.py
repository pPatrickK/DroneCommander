from drone_command_queue import *

class DroneCommander(object):
    def __init__(self, drones, commands=DroneCommandQueue):
        self.drones = drones
        self.commands = commands

    def run(self):
        pass
