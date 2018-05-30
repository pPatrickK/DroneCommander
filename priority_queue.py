import heapq

class PriorityQueue(object):
    def __init__(self, initial=None, key=lambda x:x):
        self.key = key
        if initial:
            self.data = [(key(item), item) for item in initial]
        else:
            self.data = []

    def push(self, item):
        heapq.heappush(self.data, (self.key(item), item))

    def pop(self):
        return heapq.heappop(self.data)[1]

    def copy(self):
        return PriorityQueue(self.data[:], key=self.key) # unwrap data
