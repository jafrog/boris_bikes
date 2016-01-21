require 'docking_station'

describe 'Docking Station' do
  subject(:docking_station) { DockingStation.new }
  let(:bike) { Bike.new }

  it 'docks a bike' do
    expect(docking_station.dock(bike)).to eq [bike]
  end

  it 'allows to see a docked bike' do
    docking_station.dock(bike)
    expect(docking_station.bikes).to include bike
  end

  it 'does not allow to dock more bikes than its capacity' do
    docking_station = DockingStation.new(10)
    10.times { docking_station.dock bike }
    expect { docking_station.dock(bike) }.to raise_error 'Capacity limit reached'
  end

  it 'allows to report broken bikes' do
    docking_station.dock(bike, broken: true)
    expect(docking_station.bikes.first).to be_broken
  end
end
