class DroneProxy(object):
    def __init__(self, drone):
        self.drone = drone
        self.time_for_next_command = time.time()

    def check_and_set_time_for_command(self, commands_seconds):
        if self.time_for_next_command <= time.time():
            self.time_for_next_command = time.time() + commands_seconds
            return True
        return False

    def move(self, amount, time):
        if self.check_and_set_time_for_command(time):
            self.drone.move(amount, time)
        else:
            pass

    def moveTo(self, position, time):
        if self.check_and_set_time_for_command(time):
            self.drone.moveTo(position, time)
        else:
            pass

    def start(self, height, time):
        if self.check_and_set_time_for_command(self.start_time):
            self.drone.start(height, time)
        else:
            pass

    def land(self, time):
        if self.check_and_set_time_for_command(self.land_time):
            self.drone.land(time)
        else:
            pass
