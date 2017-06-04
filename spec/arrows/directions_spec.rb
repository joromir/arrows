require 'spec_helper'

RSpec.describe Arrows::Directions do
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
