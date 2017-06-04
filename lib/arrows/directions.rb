module Arrows
  class Directions
    attr_reader :sequence

    def initialize(sequence)
      @sequence = sequence
    end

    alias to_s sequence
  end
end
