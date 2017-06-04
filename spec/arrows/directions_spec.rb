require 'spec_helper'

RSpec.describe Arrows::Directions do
  describe '#sequence' do
    subject { described_class.new('>') }

    it 'responds to sequence' do
      expect(subject).to respond_to(:sequence)
    end
  end

  describe '#==' do
    context 'when directions have the same tuple' do
      subject { described_class.new('>>>>>>') }

      let(:other_subject) { described_class.new('>>>>>>><') }

      it 'returns true' do
        expect(subject).to eq other_subject
      end
    end

    context 'when directions have distinct tuples' do
      subject { described_class.new('>>>>>>') }

      let(:other_subject) { described_class.new('>>>>>>><^^') }

      it 'returns false' do
        expect(subject).to_not eq other_subject
      end
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

  describe '#to_coordinates' do
    let(:sequence) { '' }

    subject { described_class.new(sequence) }

    it 'responds to to_coordinates' do
      expect(subject).to respond_to(:to_coordinates)
    end

    context 'when sequence is ">"' do
      let(:sequence) { '>' }

      it 'evaluates to [1, 0]' do
        expect(subject.to_coordinates).to eq Arrows::Coordinates.new(1, 0)
      end
    end

    context 'when sequence is "<"' do
      let(:sequence) { '<' }

      it 'evaluates to [-1, 0]' do
        expect(subject.to_coordinates).to eq Arrows::Coordinates.new(-1, 0)
      end
    end

    context 'when sequence is "^"' do
      let(:sequence) { '^' }

      it 'evaluates to [0, 1]' do
        expect(subject.to_coordinates).to eq Arrows::Coordinates.new(0, 1)
      end
    end

    context 'when sequence is "v"' do
      let(:sequence) { 'v' }

      it 'evaluates to [0, -1]' do
        expect(subject.to_coordinates).to eq Arrows::Coordinates.new(0, -1)
      end
    end

    context 'when sequence is ""' do
      let(:sequence) { '' }

      it 'evaluates to [0, 0]' do
        expect(subject.to_coordinates).to eq Arrows::Coordinates.new(0, 0)
      end
    end

    context 'when sequence is "<<>^^^^^vv"' do
      let(:sequence) { '<<>^^^^^vv' }

      it 'evaluates to [-1, 3]' do
        expect(subject.to_coordinates).to eq Arrows::Coordinates.new(-1, 3)
      end
    end
  end
end
