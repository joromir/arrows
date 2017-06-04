module Arrows
  class Directions
    attr_reader :sequence, :coordinates

    def initialize(sequence)
      @sequence = sequence
      @coordinates = Coordinates.new
    end

    alias to_s sequence

    def to_a
      sequence.split('')
    end

    def to_coordinates
      to_a.reduce(coordinates) { |acc, elem| acc + passport[elem] }
    end

    def ==(other)
      reduced_self  = BuildDirections.new(to_coordinates).to_s
      reduced_other = BuildDirections.new(other.to_coordinates).to_s

      reduced_self == reduced_other
    end

    private

    def passport
      {
        '>' => Coordinates.new(1, 0),
        '<' => Coordinates.new(-1, 0),
        '^' => Coordinates.new(0, 1),
        'v' => Coordinates.new(0, -1)
      }
    end
  end
end
