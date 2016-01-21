require 'docking_station'

describe DockingStation do
  let(:bike) { Bike.new }

 it { is_expected.to respond_to :release_bike }

 describe '#release_bike' do
  it 'releases working bikes' do
    subject.dock(bike)
    expect(subject.release_bike).to be_working
  end

  it 'raises an error when no bikes available' do
    expect{subject.release_bike}.to raise_error 'No bikes available'
  end
 end

  describe '#dock' do
    it 'docks a bike' do
      subject.dock(bike)
      expect(subject.bikes).to include(bike)
    end

    it 'raises an error if bike is already docked' do
      20.times { subject.dock(bike) }
      expect { subject.dock(bike) }.to raise_error 'Capacity limit reached'
    end
  end
end
