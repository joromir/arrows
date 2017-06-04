require 'spec_helper'

RSpec.describe Arrows::Coordinates do
  describe '#abscissa' do
    it 'holds the value of 0 for abscissa initially' do
      expect(subject.abscissa).to eq 0
    end

    it 'responds to abscissa' do
      expect(subject).to respond_to(:abscissa)
    end
  end

  describe '#ordinate' do
    it 'holds the value of 0 for ordinate initially' do
      expect(subject.ordinate).to eq 0
    end

    it 'responds to ordinate' do
      expect(subject).to respond_to(:ordinate)
    end
  end
end
