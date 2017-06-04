require 'spec_helper'

RSpec.describe Arrows::BuildDirections do
  describe '#pair' do
    it 'responds to pair' do
      expect(subject).to respond_to :pair
    end
  end

  describe '#to_directions' do
    subject { described_class.new(pair) }

    context 'when pair is [-3, 12]' do
      let(:pair) { Arrows::Coordinates.new(-3, 12) }

      it 'returns an isntance of Arrows::Directions' do
        expect(subject.to_directions).to be_an_instance_of(Arrows::Directions)
      end

      it 'holds the expected value' do
        expect(subject.to_directions.sequence).to eq '<<<^^^^^^^^^^^^'
      end
    end
  end

  describe '#to_s' do
    subject { described_class.new(pair) }

    context 'when pair is [1, 0]' do
      let(:pair) do
        Arrows::Coordinates.new(1, 0)
      end

      it 'evaluates to ">"' do
        expect(subject.to_s).to eq '>'
      end
    end

    context 'when pair is [-1, 0]' do
      let(:pair) do
        Arrows::Coordinates.new(-1, 0)
      end

      it 'evaluates to ">"' do
        expect(subject.to_s).to eq '<'
      end
    end

    context 'when pair is [0, 1]' do
      let(:pair) do
        Arrows::Coordinates.new(0, 1)
      end

      it 'evaluates to ">"' do
        expect(subject.to_s).to eq '^'
      end
    end

    context 'when pair is [0, -1]' do
      let(:pair) do
        Arrows::Coordinates.new(0, -1)
      end

      it 'evaluates to ">"' do
        expect(subject.to_s).to eq 'v'
      end
    end

    context 'when pair is [-3, 12]' do
      let(:pair) do
        Arrows::Coordinates.new(-3, 12)
      end

      it 'evaluates to "<<<^^^^^^^^^^^^"' do
        expect(subject.to_s).to eq '<<<^^^^^^^^^^^^'
      end
    end

    context 'when pair is [3, -12]' do
      let(:pair) do
        Arrows::Coordinates.new(3, -12)
      end

      it 'evaluates to ">>>vvvvvvvvvvvv"' do
        expect(subject.to_s).to eq '>>>vvvvvvvvvvvv'
      end
    end

    context 'when pair is [0, 0]' do
      let(:pair) do
        Arrows::Coordinates.new(0, 0)
      end

      it 'evaluates to ">"' do
        expect(subject.to_s).to eq ''
      end
    end
  end
end
