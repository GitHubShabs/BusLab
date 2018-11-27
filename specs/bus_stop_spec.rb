require("minitest/autorun")
require('minitest/rg')
require_relative("../bus_stop")

class BusStopTest < MiniTest::Test

  def test_stop_has_name
    newstop = BusStop.new("Leith Walk", [])
    assert_equal(newstop.name, "Leith Walk")
  end

  def test_stop_has_queue
    newstop = BusStop.new("Leith Walk", [])
    assert_equal(newstop.queue, [])
  end

end
