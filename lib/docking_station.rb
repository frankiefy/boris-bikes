class DockingStation
  attr_reader :bikes

  def initialize(bikes = [])
    @bikes = bikes
  end

  def release_bike
    fail "No bikes in docking station." unless !bikes.empty?
    bikes.pop
  end


  def dock(x)
    fail "Docking station is full" unless bikes.length < 20
    bikes.push(x)
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
