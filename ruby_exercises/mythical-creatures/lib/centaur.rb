class Centaur
    attr_accessor :name,
                  :breed

    def initialize(name, breed)
        @name = name
        @breed = breed
        @cranky = false
        @standing = true
        @level_of_crank = 0
    end

    def shoot
        @level_of_crank += 1
        if cranky? == false && @standing == true
            "Twang!!!"
        else
            "NO!"
        end
    end

    def run
        @level_of_crank += 1
        if cranky? == false && @standing == true
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

    def sleep
        if @standing == true
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