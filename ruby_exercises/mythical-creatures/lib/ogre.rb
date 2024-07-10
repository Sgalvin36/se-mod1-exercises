class Ogre
    attr_reader :name,
                :home

    def initialize(name, home = "Swamp")
        @name = name
        @home = home
        @swings = 0
    end

    def encounter(human)
        human.encounter_counter += 1
    end
end

class Human
    attr_reader     :name

    attr_accessor   :encounter_counter

    def initialize(name = "Jane")
        @name = name
        @encounter_counter = 0
        @notices_ogre = false
    end

    def notices_ogre?
        if @encounter_counter < 3
            @notices_ogre
        else
            @ecnounter_counter = 0
            !@notices_ogre
        end
    end

end