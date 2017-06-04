module Arrows
  class Directions
    attr_reader :sequence, :abscissa, :ordinate

    def initialize(sequence)
      @sequence = sequence
      @abscissa = 0
      @ordinate = 0
    end

    alias to_s sequence

    def to_a
      sequence.split('')
    end

    def to_coordinates
      to_a.each do |arrow|
        case arrow
        when '>' then @abscissa = abscissa + 1
        when '<' then @abscissa = abscissa - 1
        when '^' then @ordinate = ordinate + 1
        when 'v' then @ordinate = ordinate - 1
        end
      end

      [abscissa, ordinate]
    end
  end
end
