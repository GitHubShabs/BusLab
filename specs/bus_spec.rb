require("minitest/autorun")
require('minitest/rg')
require_relative("../bus")

class BusTest < MiniTest::Test

def test_bus_has_route_number
  bus1 = Bus.new(11, "")
  assert_equal(11, bus1.number)

end

def test_bus_has_destination
  bus1 = Bus.new(11, "Princes Street")
  assert_equal("Princes Street", bus1.destination)

end

def test_bus_can_drive
  bus1 = Bus.new(35, "Riccarton")
  noise = bus1.drive
  assert_equal(noise, "broom broom")

end



end
