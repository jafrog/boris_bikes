require "bike"

describe Bike do
  it { is_expected.to respond_to :working? }
  it { is_expected.to respond_to :broken?}

  describe '#mark_as_broken' do
    it 'marks a bike as broken' do
      subject.mark_as_broken
      expect(subject).to be_broken
    end
  end

end
