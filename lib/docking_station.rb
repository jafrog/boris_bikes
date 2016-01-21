require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize(capacity = nil)
    @capacity = capacity || DEFAULT_CAPACITY
    @bikes = []
    @broken_bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    bike = bikes.pop
  end

  def dock(bike, broken: nil)
    fail 'Capacity limit reached' if full?
    if broken
      bike.mark_as_broken
      broken_bikes << bike
    else
      bikes << bike
    end
  end

  private

  attr_writer :bikes
  attr_accessor :broken_bikes

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end
end
