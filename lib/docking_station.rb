require 'bike'

class DockingStation
  def release_bike
    while true
      bike = Bike.new
      return bike if bike.working?
    end
  end
end
