from drone_command_queue import *
from drone_command import *
import datetime
import time
import traceback

class DroneCommander(object):
    def __init__(self, drones, commands=DroneCommandQueue(), observer=None):
        self.drones = drones
        self.commands = commands
        self._reset_start_time()
        self.observer = observer

    def _notify(self, msg):
        if self.observer != None:
            self.observer.notify(msg)

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
        try:
            drone = self.drones[drone_id]
            if command.type == DroneCommandType.START:
                drone.start(command.height, command.time)
            elif command.type == DroneCommandType.LAND:
                drone.land(command.time)
            elif command.type == DroneCommandType.MOVE:
                drone.move(command.amount, command.yaw_amount, command.time)
            elif command.type == DroneCommandType.MOVETO:
                drone.moveTo(command.position, command.yaw, command.time)
            elif command.type == DroneCommandType.MOVEHOME:
                drone.moveHome(command.time)
            elif command.type == DroneCommandType.LANDWITHHEIGHT:
                drone.landWithHeight(command.height, command.time)
            else:
                self._notify("unknown command")
        except:
            exception_traceback = traceback.format_exc()
            self._notify(exception_traceback)

    def _run_realtime(self):
        queue = self.commands #.copy()

        while len(queue.data) > 0:
            next_commands_start = queue.peek()[1].start
            self._wait_until(next_commands_start)
            command_data = queue.pop()
            id = command_data[0]
            command = command_data[1]
            self._run_command(id, command)

    def _run_fast(self):
        queue = self.commands #.copy()

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

    def runForever(self, realtime=True):
        while True:
            self.run(realtime)
            time.sleep(0.01)

    def print_commands(self):
        queue = self.commands.copy()

        while len(queue.data) > 0:
            command_data = queue.pop()
            id = command_data[0]
            command = command_data[1]
            print "drone:", id
            print command
