class DroneProxy(object):
    def __init__(self, drone, observer=None):
        self.drone = drone
        self.time_for_next_command = 0
        self.height = 0
        self.observer = observer

    def notify(self, msg):
        if self.observer != None:
            self.observer.notify(msg)

    def check_and_set_time_for_command(self, commands_seconds):
        if self.time_for_next_command <= self.time_for_next_command:
            self.time_for_next_command += commands_seconds
            return True
        return False

    def check_max_velocity(self, movement, time):
        velocity = movement.length() / time
        return self.drone.max_velocity >= velocity;

    def check_max_velocity_height(self, height, time):
        velocity = abs(height - self.height) / time
        return self.drone.max_velocity >= velocity

    def move(self, amount, yaw, time):
        if not self.check_and_set_time_for_command(time):
            self.notify("start for move was too early")
        elif not self.check_max_velocity(amount, time):
            self.notify("drone is too fast in move")
        else:
            self.drone.move(amount, yaw, time)

    def moveTo(self, position, yaw, time):
        if not self.check_and_set_time_for_command(time):
            self.notify("start for moveTo was too early")
        elif not self.check_max_velocity(position - drone.position, time):
            self.notify("drone is too fast in moveTo")
        else:
            self.drone.moveTo(position, yaw, time)

    def moveHome(self, time):
        if not self.check_and_set_time_for_command(time):
            self.notify("start for moveHome was too early")
        elif not self.check_max_velocity(drone.home_position - drone.position, time):
            self.notify("drone is too fast in moveHome")
        else:
            self.drone.moveHome(time)

    def start(self, height, time):
        if not self.check_and_set_time_for_command(time):
            self.notify("start for start was too early")
        elif not self.check_max_velocity_height(height, time):
            self.notify("drone is too fast in start")
        else:
            self.drone.start(height, time)
            self.height = height

    def land(self, time):
        if not self.check_and_set_time_for_command(time):
            self.notify("start for land was too early")
        elif not self.check_max_velocity_height(height, time):
            self.notify("drone is too fast in land")
        else:
            self.drone.land(time)
            self.height = 0

def wrap_drone(drone, observer=None):
    return DroneProxy(drone, observer)

def wrap_drones(drones, observer=None):
    return list((wrap_drone(drone, observer) for drone in drones))
