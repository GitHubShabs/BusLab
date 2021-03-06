require("minitest/autorun")
require('minitest/rg')
require_relative("../bus")
require_relative("../passenger")

class BusTest < MiniTest::Test

  def test_bus_has_route_number
    bus1 = Bus.new(11, "", [])
    assert_equal(11, bus1.number)

  end

  def test_bus_has_destination
    bus1 = Bus.new(11, "Princes Street", [])
    assert_equal("Princes Street", bus1.destination)

  end

  def test_bus_can_drive
    bus1 = Bus.new(35, "Riccarton", [])
    noise = bus1.drive
    assert_equal(noise, "broom broom")

  end

  def test_bus_start_empty
    bus1 = Bus.new(22, "Silverknowles", [])
    assert_equal([], bus1.passengers)
  end

  def test_count_passengers
    bus1 = Bus.new(11, "Princes Street", ["Rick", "Shabs", "John"])
    assert_equal(bus1.passenger_count, 3)
  end

  def test_pick_up
    bus1 = Bus.new(11, "Princes Street", [])
    passenger = Passenger.new("Rick", 38)
    bus1.pick_up(passenger)
    assert_equal(1, bus1.passenger_count)
  end

  def test_drop_off
    passenger = Passenger.new("Rick", 38)
    bus1 = Bus.new(11, "Princes Street", [passenger])
    bus1.drop_off(passenger)
    assert_equal(0, bus1.passenger_count)
  end

  def test_empty_bus
    passenger1 = Passenger.new("Rick", 38)
    passenger2 = Passenger.new("Shabs", 21)
    passenger3 = Passenger.new("Jonathan", 5)
    bus1 = Bus.new(11, "Princes Street", [passenger1, passenger2, passenger3])
    bus1.empty_bus
    assert_equal(0, bus1.passenger_count)
  end


end
