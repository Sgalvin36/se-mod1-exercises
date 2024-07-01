
class Unicorn
    attr_reader :name,
                :color
                # :magical_powers
            
  def initialize(name, color = "silver")
    @name = name
    @color = color
    # @magical_powers = []
  end

  def silver?
    color.include?"silver"
  end

  def say(phrase)
    "**;* #{phrase} **;*"
  end

end