require 'spec_helper'

RSpec.describe Arrows::Directions do
  describe '#sequence' do
    subject { described_class.new('>') }

    it 'responds to sequence' do
      expect(subject).to respond_to(:sequence)
    end
  end

  describe '#to_s' do
    context 'when sequence is "<<>^^^^^vv"' do
      subject { described_class.new('<<>^^^^^vv') }

      it 'returns an instance of String' do
        expect(subject.to_s).to be_an_instance_of(String)
      end

      it 'returns "<<>^^^^^vv"' do
        expect(subject.to_s).to eq '<<>^^^^^vv'
      end
    end
  end
end
