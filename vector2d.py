import math

class Vector2D(object):
    def __init__(self, x = 0.0, y = 0.0):
        self.x = x
        self.y = y

    def getX(self):
        return self.x

    def getY(self):
        return self.y

    def sefX(self, x):
        self.x = x

    def setY(self, y):
        self.y = y

    def addX(self, amount):
        self.x += amount

    def addY(self, amount):
        self.y += amount

    def length(self):
        return math.sqrt(self.lengthSquared())

    def lengthSquared(self):
        return self.x * self.x + self.y * self.y

    def scale(self, amount):
        own_length = self.length()
        self.x = amount * self.x / own_length
        self.y = amount * self.y / own_length

    def __add__(self, other):
        self.addX(other.x)
        self.addY(other.y)

    def __sub__(self, other):
        self.addX(-other.x)
        self.addY(-other.y)

    def __eq__(self, other):
        return self.getX() == other.getX() and self.getY() == other.getY()

    def __ne__(self, other):
        return self.getX() != other.getX() or self.getY() != other.getY()

    def __str__(self):
        return self.toString()

    def toString(self):
        return "[" + str(self.x) + ", " + str(self.y) + "]"
