class Bag
  attr_reader :count, :candies

  def initialize
    @empty = true
    @count = 0
    @candies = []
  end

  def empty?
    @empty
  end

  def add_candy(candy)
    @empty = false
    @count += 1
    @candies << candy
  end

  def contains?(type)
    @candies.each do |candy|
      if candy.type == type
        return true
      else
        return false
      end 
    end
  end
end