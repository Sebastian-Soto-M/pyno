import unittest
from .parsers.test_user import TestUser 

def get_suite():
    suite = unittest.TestSuite()
    suite.addTest(unittest.makeSuite(TestUser))
    return suite

def run_suite():
    runner = unittest.TextTestRunner()
    runner.run(get_suite())


if __name__ == '__main__':
    run_suite()
