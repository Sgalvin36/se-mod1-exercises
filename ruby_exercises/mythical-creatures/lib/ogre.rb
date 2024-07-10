class Ogre
    attr_reader     :name,
                    :home

    attr_accessor   :swings,
                    :encounter_counter            

    def initialize(name, home = "Swamp")
        @name = name
        @home = home
        @swings = 0
        @encounter_counter = 0
    end

    def encounter(human)
        @encounter_counter += 1
        human.encounter_counter += 1
        notice_check(human)
    end

    def notice_check(human)
        if @encounter_counter % 3 == 0
            swing_at(human)
            if @swings == 2
                human.knocked_out = true
            end
        end
    end

    def swing_at(human)
        @swings += 1
    end

    def apologize(human)
        human.knocked_out = false
    end
end

class Human
    attr_reader     :name

    attr_accessor   :encounter_counter,
                    :knocked_out

    def initialize(name = "Jane")
        @name = name
        @encounter_counter = 0
        @notices_ogre = false
        @knocked_out = false
    end

    def notices_ogre?
        if @encounter_counter >= 3
            @encounter_counter = 0
            @notices_ogre = true
        else
            @notices_ogre = false
        end
    end

    def knocked_out?
        @knocked_out
    end
end