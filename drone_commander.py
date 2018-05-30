from drone_command_queue import *

class DroneCommander(object):
    def __init__(self, drones, commands=DroneCommandQueue()):
        self.drones = drones
        self.commands = commands

    def _run_realtime(self):
        pass

    def _run_fast(self):
        pass

    def run(self, realtime=True):
        if(realtime):
            self._run_realtime()
        else:
            self.run_fast()

    def print_commands(self):
        queue = self.commands.copy()

        while len(queue.data) > 0:
            command_data = queue.pop()
            id = command_data[0]
            command = command_data[1]
            print "drone:", id
            print command
