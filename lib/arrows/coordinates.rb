module Arrows
  class Coordinates
    attr_reader :abscissa, :ordinate

    def initialize(abscissa = 0, ordinate = 0)
      @abscissa = abscissa
      @ordinate = ordinate
    end

    def to_a
      [abscissa, ordinate]
    end

    def ==(other)
      abscissa == other.abscissa && ordinate == other.ordinate
    end

    def +(other)
      new_abscissa = abscissa + other.abscissa
      new_ordinate = ordinate + other.ordinate

      Coordinates.new(new_abscissa, new_ordinate)
    end
  end
end
