class Wizard
    attr_accessor :name

    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
        @rested = true
        @cast_spells = 0
    end

    def bearded?
        @bearded
    end

    def rested?
        if @cast_spells < 3
            @rested = true
        else
            @rested = false
        end
    end

    def incantation(spell_prep)
        "sudo #{spell_prep}"
    end

    def cast
        @cast_spells +=1
        "MAGIC MISSLE!"
    end

end