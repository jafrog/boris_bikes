class Bike

  attr_reader :working

  def initialize
    @working = true
  end

  def working?
    working
  end

  def broken?
    !working?
  end

  def mark_as_broken
    self.working = false
  end

  private
  attr_writer :working

end
