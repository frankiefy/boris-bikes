class DockingStation
  attr_reader :bike


  def release_bike
    raise "No bikes in docking station." unless bike
    bike
  end

  def dock(bike)
    @bike = bike
  end


end



=begin
nouns           verbs
mop             decide
docking station see
bike            docked

objects         messages
mop             decide
docking station see, decide, use?
bike            see?

write a feature test for seeing a bike has been docked
write a unit test for the method you need to add to DockingStation/Bike to make seeing posible
pass both tests
use an instance variable with attr_reader to do a full test-implementation cycle for the second User Story above
=end
