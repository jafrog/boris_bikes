require 'docking_station'

describe DockingStation do
  let(:bike) { Bike.new }

 it { is_expected.to respond_to :release_bike }

 describe '#release_bike' do
  it 'releases working bikes' do
    expect(subject.release_bike).to be_working
  end
 end

  describe '#dock' do
    it 'docks a bike' do
      subject.dock(bike)
      expect(subject.bike).to eq(bike)
    end
  end
end
