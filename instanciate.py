class A(object):
    def __init__(self):
        self.a = 42

class A2(object):
    def __init__(self):
        self.a2 = 1337

class B(A):
    def __init__(self, b):
        super(B, self).__init__()
        self.b = b

def instantiate(T, *args):
    return T(*args)

def test_instantiation():
    a = instantiate(A)
    print a.a
    a2 = instantiate(A2)
    print a2.a2
    b = instantiate(B, 1111)
    print b.a, b.b
