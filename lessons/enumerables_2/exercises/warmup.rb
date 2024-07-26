#Practicing .each, .map, .find, .find_all

# Use .each to complete the method

numbers = [1, 2, 3, 4]

def double_numbers(nums)
  # your code here
  # use .each only
  doubled = []
  nums.each do |num|
    doubled << num * 2
  end
  doubled
end

p double_numbers(numbers)
# should return [2, 4, 6, 8]

def find_first_even(nums)
  # your code here
  # use .each only
  nums.each do |num|
    return num if num.even?
  end
end

p find_first_even(numbers)
# should return: 2

def find_all_evens(nums)
  #your code here
  #use .each only
  evens = []
  nums.each do |num|
    evens << num if num.even?
  end
  evens
end

p find_all_evens(numbers)
# should return [2, 4]


# Rework each of these examples using the 
# appropriate enumberable.

numbers = [1, 2, 3, 4]

def double_numbers(nums)
  # your code here
  # use .map, .find, or .find_all
  nums.map do |num|
    num * 2
  end
end

p double_numbers(numbers)
# should return [2, 4, 6, 8]

def find_first_even(nums)
  # your code here
  # use .map, .find, or .find_all
  nums.find do |num|
    num.even?
  end
end

p find_first_even(numbers)
# should return: 2

def find_all_evens(nums)
  #your code here
  # use .map, .find, or .find_all
  nums.find_all do |num|
    num.even?
  end
end

p find_all_evens(numbers)
# should return [2, 4]


#Answer these questions with your group

#1. What's the difference between using .each and .map? 

#2. For each of the 4 above enumerables, explain how it's working.