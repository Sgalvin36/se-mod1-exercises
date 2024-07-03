class Werewolf
    attr_accessor :name,
                  :location

    def initialize(name, location)
        @name = name
        @location = location
        @human = true
        @hunger = false

    end

    def human?
        @human
    end

    def wolf?
        !@human
    end

    def change!
        @human = !@human
        if @human == false
            @hunger = true
        end
    end

    def hungry?
        @hunger
    end

    def consume(person)
        if @human == false
            @hunger = false
            person.eaten
            "Delicious"
        else
            "You can't eat that!"
        end
    end
end

class Victim
    attr_accessor :status

    def initialize
      @status = :alive
    end

    def eaten
      @status = :dead
    end
  end