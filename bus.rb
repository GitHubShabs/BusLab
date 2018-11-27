class Bus

attr_reader :number, :destination,:passengers


  def initialize(number, destination, passengers)
    @number = number
    @destination = destination
    @passengers = passengers

  end

  def drive()
    return "broom broom"
  end

  def passenger_count
    return @passengers.count
  end

  def pick_up(passenger)
    @passengers << passenger
  end

  def drop_off(passenger)
        @passengers.delete(passenger)
  end

end
