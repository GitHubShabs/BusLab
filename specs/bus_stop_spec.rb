require("minitest/autorun")
require('minitest/rg')
require_relative("../bus_stop")
require_relative("../passenger")

class BusStopTest < MiniTest::Test

  def test_stop_has_name
    newstop = BusStop.new("Leith Walk", [])
    assert_equal(newstop.name, "Leith Walk")
  end

  def test_stop_has_queue
    newstop = BusStop.new("Leith Walk", [])
    assert_equal(newstop.queue, [])
  end

  def test_add_person_to_queue
    newstop = BusStop.new("Leith Walk", [])
    passenger1 = Passenger.new("Rick", 38)
    newstop.add_to_queue(passenger1)
    assert_equal(newstop.queue.count, 1)
  end

end
