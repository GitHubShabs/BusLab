require("minitest/autorun")
require('minitest/rg')
require_relative("../passenger")

class PassengerTest < MiniTest::Test

def test_passenger_has_name
  passenger_1 = Passenger.new("Alex", 5)
  assert_equal("Alex", passenger_1.name)
end


def test_passenger_has_age
  passenger_1 = Passenger.new("Alex", 5)
  assert_equal(5, passenger_1.age)
end












end
