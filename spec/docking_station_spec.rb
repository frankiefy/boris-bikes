require 'docking_station_class.rb'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'expects bike to be working' do
    expect(((DockingStation.new).release_bike).working?).to eq nil
  end
end

describe Bike do
  it 'responds to working?' do
    expect(subject).to respond_to :working?
  end
end
