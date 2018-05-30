from priority_queue import *

class DroneCommandQueue(PriorityQueue):
    def __init__(self, initial=None):
        super(DroneCommandQueue, self).__init__(initial, key=lambda x:x.start)
