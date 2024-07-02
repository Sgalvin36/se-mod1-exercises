class Pirate
    attr_reader :name,
                :job,
                :booty,
                :crime

    def initialize(name, job = "Scallywag")
        @name = name
        @job = job
        @cursed = false
        @crime = 0
        @booty = 0
    end

    def cursed?
        if @crime >= 3
            @cursed = true
        else
            @cursed = false
        end
    end

    def commit_heinous_act
        @crime += 1
    end

    def rob_a_ship
        @booty += 100
        if rand(1..10) <= 5
            @crime += 1
        end
    end
end