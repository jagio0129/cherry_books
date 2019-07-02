class Ticket
  attr_accessor :stamp_at, :fare

  def initialize(fare)
    @fare = fare
  end

  def stamp(station)
    @stamp_at = station
  end
end
