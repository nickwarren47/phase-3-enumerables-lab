require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  # your code here
  food_names = spicy_foods.map do |food|
    food[:name]
  end
end
# binding.pry
# get_names(spicy_foods)

# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  # your code here
  spicy_foods.filter{|food| food[:heat_level] > 5}
end
# binding.pry


# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  # your code here
  food_spice_rating = spicy_foods.map do |food|
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{"🌶" * food[:heat_level]}"
  end
end
# binding.pry

# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  # your code here
  spicy_foods.find do |food|
    food[:cuisine] === cuisine
  end
end
# binding.pry

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  # your code here
  spicy_foods.sort do |food1, food2|
    food1[:heat_level] <=> food2[:heat_level]
  end
end
# binding.pry

# this is another method to solving the 
# problem above
# def sort_by_heat(spicy_foods)
#   # your code here
#   spicy_foods.sort do |food1, food2|
#     food1[:heat_level] <=> food2[:heat_level]
#   end
# end
# binding.pry



# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  # your code here
  spicy_foods.each do |food|
  if food[:heat_level] > 5
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{"🌶" * food[:heat_level]}"
  end
  end
end
# binding.pry

# answer on solution code:
# def print_spiciest_foods(spicy_foods)
#   spiciest = spiciest_foods(spicy_foods)
#   print_spicy_foods(spiciest)
# end


# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  # your code here
  spicy_food_values = spicy_foods.map do |food|
    food[:heat_level]  
  end
  spicy_food_values.sum/spicy_food_values.length
end

