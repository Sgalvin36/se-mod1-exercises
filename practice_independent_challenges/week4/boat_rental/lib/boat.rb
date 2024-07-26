class Boat
    attr_reader :type, :rate, :hours_rented

    def initialize(type, rate)
        @type = type
        @rate = rate
        @hours_rented = 0
    end

end
