"""
(c) 2019 Andreas Hoenle (andreas.hoenle@gmail.com)

Wrapper around the valves
"""

class MagneticValve():
    """ normally closed magnetic valve """
    def __init__(self, **kwargs):
        for key, val in kwargs:
            setattr(self, key, val)
        self.close()

    def open(self):
        """ open the valve """
        # just set self.pin to high?
        pass

    def close(self):
        """ close the valve """
        # just set self.pin to low?
        pass