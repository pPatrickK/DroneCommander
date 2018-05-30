from drone_command_queue import *
import datetime
import time

class DroneCommander(object):
    def __init__(self, drones, commands=DroneCommandQueue()):
        self.drones = drones
        self.commands = commands
        self._reset_start_time()

    def _reset_start_time(self, delta_seconds=0):
        self.start_time = datetime.datetime.now()

    def _get_relative_time_since_start(self, delta_seconds):
        return self.start_time + datetime.timedelta(0, delta_seconds);

    def _wait_until(self, relative_start):
        wanted_start = self._get_relative_time_since_start(relative_start)
        time_delta = (wanted_start - datetime.datetime.now()).total_seconds()
        if time_delta > 0.0:
            time.sleep(time_delta)

    def _run_command(self, drone_id, command):
        print drone_id, command # real implementation needed

    def _run_realtime(self):
        queue = self.commands.copy()

        while len(queue.data) > 0:
            next_commands_start = queue.peek()[1].start
            self._wait_until(next_commands_start)
            command_data = queue.pop()
            id = command_data[0]
            command = command_data[1]
            self._run_command(id, command)

    def _run_fast(self):
        queue = self.commands.copy()

        while len(queue.data) > 0:
            command_data = queue.pop()
            id = command_data[0]
            command = command_data[1]
            self._run_command(id, command)

    def run(self, realtime=True):
        self._reset_start_time()
        if(realtime):
            self._run_realtime()
        else:
            self._run_fast()

    def print_commands(self):
        queue = self.commands.copy()

        while len(queue.data) > 0:
            command_data = queue.pop()
            id = command_data[0]
            command = command_data[1]
            print "drone:", id
            print command
