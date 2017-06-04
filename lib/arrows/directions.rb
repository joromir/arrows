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
      to_a.each do |arrow|
        case arrow
        when '>' then coordinates.right
        when '<' then coordinates.left
        when '^' then coordinates.up
        when 'v' then coordinates.down
        end
      end

      coordinates.to_a
    end
  end
end
