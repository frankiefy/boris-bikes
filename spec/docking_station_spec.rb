require 'docking_station'

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

  it 'subject responding with 1 argument' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'subject responds to .bike' do
    expect(subject).to respond_to :bike
  end

#walkthrough
  it 'docks the bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end
