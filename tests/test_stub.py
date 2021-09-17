import unittest
from stub import stub


class TestStub(unittest.TestCase):

    def test_true(self):
        # Given
        instance = stub.Stub()

        # When
        result = instance.hello("Davo")

        # Then
        self.assertEqual(result, "Hello, Davo!")
