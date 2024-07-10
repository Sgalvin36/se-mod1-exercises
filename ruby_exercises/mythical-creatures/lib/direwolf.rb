class Direwolf
    attr_reader :name,
                :home,
                :size,
                :starks_to_protect

    def initialize(name, home = "Beyond the Wall", size = "Massive")
        @name = name
        @home = home
        @size = size
        @starks_to_protect = []
        @hunts_white_walkers = true
    end

    def protects(stark)
        if @home == stark.location && @starks_to_protect.count < 2
            stark.safe = true
            @hunts_white_walkers = false
            @starks_to_protect << stark
        end
    end

    def hunts_white_walkers?
        @hunts_white_walkers
    end

    def leaves(stark)
        @starks_to_protect.delete(stark)
        stark.safe = false
        stark
    end
end

class Stark
    attr_reader     :name,
                    :location,
                    :house_words

    attr_accessor   :safe

    def initialize(name, location = "Winterfell")
        @name = name
        @location = location
        @safe = false
        @house_words = "Winter is Coming"
    end

    def safe?
        @safe
    end
end