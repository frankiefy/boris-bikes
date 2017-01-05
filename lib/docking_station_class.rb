class Bike
  def working?
  end
end

class DockingStation
  def release_bike
    return Bike.new
  end
end
