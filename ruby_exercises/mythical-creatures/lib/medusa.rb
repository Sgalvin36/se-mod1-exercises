class Medusa
    attr_accessor :name

    def initialize(name, statues = [])
        @name = name
        @statues = statues
        @max_statue = 3
    end

    def statues
        @statues
    end

    def stare(person)
        if statues.count >= @max_statue
            freed_person = @statues.shift
            freed_person = freed_person.release
        end
        @statues.push(person)
        person = person.victim
    end

end

class Person
    attr_accessor :name

    def initialize(name)
        @name = name
        @stoned = false
    end

    def stoned?
        @stoned
    end

    def victim
        @stoned = true
    end

    def release
        @stoned = false
    end
end

