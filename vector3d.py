import math

class Vector3D(object):
    def __init__(self, x = 0.0, y = 0.0, z = 0.0):
        self.x = x
        self.y = y
        self.z = z

    def getX(self):
        return self.x

    def getY(self):
        return self.y

    def getZ(self):
        return self.z

    def sefX(self, x):
        self.x = x

    def setY(self, y):
        self.y = y

    def setZ(self, z):
        self.z = z

    def addX(self, amount):
        self.x += amount

    def addY(self, amount):
        self.y += amount

    def addZ(self, amount):
        self.z += amount

    def length(self):
        return math.sqrt(self.lengthSquared())

    def lengthSquared(self):
        return self.x * self.x + self.y * self.y + self.z * self.z

    def scale(self, amount):
        own_length = self.length()
        self.x = amount * self.x / own_length
        self.y = amount * self.y / own_length
        self.z = amount * self.z / own_length

    def __add__(self, other):
        self.addX(other.x)
        self.addY(other.y)
        self.addZ(other.z)

    def __sub__(self, other):
        self.addX(-other.x)
        self.addY(-other.y)
        self.addZ(-other.z)

    def __eq__(self, other):
        return self.getX() == other.getX() and self.getY() == other.getY() and self.getZ() == other.getZ()

    def __ne__(self, other):
        return not self == other

    def __str__(self):
        return self.toString()

    def toString(self):
        return "[" + str(self.x) + ", " + str(self.y) + ", " + str(self.z) "]"
