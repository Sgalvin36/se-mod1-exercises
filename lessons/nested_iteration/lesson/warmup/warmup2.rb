# Part Two
# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings
p nested_animals.flatten

unnested_animals = nested_animals.flat_map {|animal| animal}
p unnested_animals
# 2. Return an unnested array of animals with length >= 4
long_animals = nested_animals.flatten.find_all do |animal|
    animal.length >= 4
end
p long_animals


# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }
hash_table = {}
nested_animals.flatten.map do |animal|
    hash_table[animal] = animal.length
    end
 p hash_table