require 'docking_station'

describe 'Docking a bike in a docking station' do
  subject(:docking_station) { DockingStation.new }
  let(:bike) { Bike.new }

  it 'docks a bike' do
    expect(docking_station.dock(bike)).to eq [bike]
  end

  it 'allows to see a docked bike' do
    docking_station.dock(bike)
    expect(docking_station.bikes).to include bike
  end

  it 'docks up to 20 bikes' do
    DockingStation::DEFAULT_CAPACITY.times { docking_station.dock(Bike.new) }
    expect(docking_station.bikes.count).to eq 20
  end

end
