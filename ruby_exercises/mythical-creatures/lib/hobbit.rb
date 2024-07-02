class Hobbit
    attr_reader :name,
                :disposition,
                :age

    def initialize(name, disposition = "homebody")
        @name = name
        @disposition = disposition
        @age = 0
        @adult = false
        @old = false
        @ring = false
        @short = true
    end

    def adult?
        @adult
    end

    def old?
        @old
    end

    def has_ring?
        if @name == "Frodo"
            @ring = true
        else
            @ring
        end
    end

    def is_short?
        @short
    end

    def celebrate_birthday
        @age += 1
        if @age > 100
            @old = true
        elsif @age > 32
            @adult = true
        end
    end
end