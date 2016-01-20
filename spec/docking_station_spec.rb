require 'docking_station'

describe DockingStation do
 it { is_expected.to respond_to :release_bike }

 describe '#release_bike' do
  it 'releases working bikes' do
    expect(subject.release_bike).to be_working
  end
 end
end
