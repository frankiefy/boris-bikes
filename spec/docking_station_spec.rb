require 'docking_station'

describe DockingStation do

bike = Bike.new #we create an instance of Bike in order to use it in some tests

  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'gives the bike created' do
    subject.dock(bike)  #we dock a previously created (line 5) bike
    expect(subject.release_bike).to eq bike
  end

  it 'expects bike to be working by default' do
    subject.dock(bike)
    expect((subject.release_bike).working?).to eq true
  end

  it 'reports a broken bike as broken when docked' do
    broken_bike = Bike.new
    subject.dock(broken_bike(works=false))
    expect(broken_bike.working?).to eq false
  end

  it 'subject responding with 1 argument' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

#walkthrough
  it 'docks the bike' do
    expect(subject.dock(bike)).to include(bike)
  end

  it 'returns docked bike' do
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  it 'does not release bike if dock is empty' do
    expect {subject.release_bike}.to raise_error("No bikes in docking station.")
  end

  it 'does not accept a bike when full' do
    subject.capacity.times { subject.dock(bike) }
    expect {subject.dock(bike)}.to raise_error("Docking station is full")
  end

  it 'has a default capcity of 20' do
    expect(subject.capacity).to eq 20
  end

  it 'when passed capacity of 10, the capacity is 10' do
    docking_station = DockingStation.new(10)
    expect(docking_station.capacity).to eq 10
  end
end
