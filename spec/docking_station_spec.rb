require 'docking_station_class.rb'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'gives a bike' do
    expect(subject.release_bike).to be_instance_of Bike
  end

  it 'expects bike to be working' do
    expect(((DockingStation.new).release_bike).working?).to eq true
  end
end
