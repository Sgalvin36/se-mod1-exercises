class Centaur
    attr_accessor :name,
                  :breed

    def initialize(name, breed)
        @name = name
        @breed = breed
        @cranky = false
        @standing = true
        @level_of_crank = 0
        @rested = false
        @sick = false
    end

    def shoot
        @level_of_crank += 1
        if !cranky? && standing?
            "Twang!!!"
        else
            "NO!"
        end
    end

    def run
        @level_of_crank += 1
        if !cranky? && standing?
            "Clop clop clop clop!"
        else
            "NO!"
        end
    end

    def cranky?
        if @level_of_crank < 3
            @cranky
        else
            !@cranky
        end
    end

    def standing?
        @standing
    end

    def laying?
        !@standing
    end

    def rested?
        @rested
    end

    def sick?
        @sick
    end

    def drink_potion
        if standing? && !rested?
            @rested = true
        elsif standing? && rested?
            @sick = true
        else
            "Can't drink while laying down or sick"
        end
    end

    def sleep
        if standing?
            "NO!"
        else
            @level_of_crank = 0
        end
    end

    def lay_down
        @standing = false
    end

    def stand_up
        @standing = true
    end

end