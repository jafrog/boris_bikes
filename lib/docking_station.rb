require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if bikes.empty?
    bikes.pop
  end

  def dock(bike)
    fail 'Capacity limit reached' if bikes.count >= 20
    bikes << bike
  end

  private
  attr_writer :bikes
end
