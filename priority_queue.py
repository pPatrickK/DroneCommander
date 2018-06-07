import heapq
import copy

import  copy as copy

class PriorityQueue(object):
    def __init__(self, initial=None, key=lambda x:x):
        self.key = key
        if initial:
            self.data = [(key(item), item) for item in initial]
            heapq.heapify(self.data)
        else:
            self.data = []

    def push(self, item):
        heapq.heappush(self.data, (self.key(item), item))

    def pop(self):
        return heapq.heappop(self.data)[1]

    def peek(self):
        return self.data[0][1]

    def flatcopy(self):
        return copy.copy(self)

    def deepcopy(self):
        return copy.deepcopy(self)

    def copy(self):
        return copy.deepcopy(self)
