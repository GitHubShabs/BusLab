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


end
