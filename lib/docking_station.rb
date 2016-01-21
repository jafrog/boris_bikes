require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    bikes.pop
  end

  def dock(bike)
    fail 'Capacity limit reached' if full?
    bikes << bike
  end

  private

  attr_writer :bikes

  def full?
    bikes.count >= 20
  end

  def empty?
    bikes.empty?
  end
end
