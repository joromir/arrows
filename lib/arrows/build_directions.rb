module Arrows
  class BuildDirections
    attr_reader :pair, :sequence

    def initialize(pair = Arrows::Coordinates.new)
      @pair = pair
      @sequence = ''
    end

    def to_s
      append_arrow(pair.abscissa, '>', '<')
      append_arrow(pair.ordinate, '^', 'v')

      sequence
    end

    def to_directions
      Directions.new(to_s)
    end

    private

    def append_arrow(line, positive_arrow, negative_arrow)
      if line > 0
        line.times { sequence << positive_arrow }
      else
        (-1 * line).times { sequence << negative_arrow }
      end
    end
  end
end
