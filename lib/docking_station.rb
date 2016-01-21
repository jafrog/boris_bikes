require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize(capacity = nil)
    @capacity = capacity || DEFAULT_CAPACITY
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    bikes.pop
  end

  def dock(bike, broken: nil)
    fail 'Capacity limit reached' if full?
    bike.mark_as_broken if broken
    bikes << bike
  end

  private

  attr_writer :bikes

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end
end
