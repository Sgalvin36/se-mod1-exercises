class Player
    attr_reader :name,
                :position,
                :stats

    def initialize(info)
        @name = info[:name]
        @position = info[:position]
        @stats = Hash.new(0)
    end

    def update_stats(stat)
        @stats[stat] += 1
    end
end