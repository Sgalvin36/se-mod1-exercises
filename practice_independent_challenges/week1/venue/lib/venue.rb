class Venue
    attr_reader :name,
                :capacity,
                :patrons

    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @patrons = []
        @over_capacity = false
    end

    def add_patron(name)
        @patrons << name
    end

    def yell_at_patrons
        @patrons.map do |name|
            name.upcase
        end
    end

    def over_capacity?
        if @patrons.count >= @capacity
            over_capacity = true
        else
            over_capacity = false
        end
    end

    def kick_out
        while @patrons.count > @capacity
            patrons.shift
        end
    end
end
