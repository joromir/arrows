module Arrows
  class Coordinates
    attr_reader :abscissa, :ordinate

    def initialize(x = 0, y = 0)
      @abscissa = x
      @ordinate = y
    end

    def to_a
      [abscissa, ordinate]
    end

    def right
      @abscissa = abscissa + 1
    end

    def left
      @abscissa = abscissa - 1
    end

    def up
      @ordinate = ordinate + 1
    end

    def down
      @ordinate = ordinate - 1
    end
  end
end
