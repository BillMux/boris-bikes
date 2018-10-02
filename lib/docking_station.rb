require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    while true
      bike = Bike.new
      return bike if bike.working?
    end
  end

  def dock(bike)
    @bikes << bike
  end

  def examine_bikes(selection)
    # puts "There are #{@bikes.length} bike(s) available"
    # puts "Which bike would you like to see?"
    @bikes[selection]

  end
end
