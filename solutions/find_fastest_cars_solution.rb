require 'rspec'
require 'yaml'

# setup code -- loading some cars...
class Car
  attr_accessor :make, :model, :horsepower, :zero_to_sixty, :weight
end
cars = YAML.load_file('../data_for_exercises/cars.yml')

# Challenge 1:
# Given our list of cars, determine the five fastest from 0 to 60 mph.
# Print their names (make and model) to the screen, in ascending order of their 0-to-60 time.

top_five_zero_to_sixty = cars.sort_by{|car| car.zero_to_sixty}[0..4].map{|car| "#{car.make} #{car.model}"}
# note: using concatenation instead of interpolation necessitates explicit string conversion (.to_s) because of the Toyota 86
puts 'Top 10 0-to-60:'
puts top_five_zero_to_sixty
puts '-----------'

# Challenge 2:
# Given our list of cars, determine the five with the highest horsepower.
# Print only the horsepower numbers to the screen, in descending order.

top_five_horsepower = cars.sort_by(&:horsepower).reverse[0..4].map(&:horsepower)
puts 'Top 5 horsepower:'
puts top_five_horsepower
puts '-----------'

# Challenge 3:
# The power-to-weight ratio of a car is a good indicator of performance.
# The fewer pounds per horsepower, the better the performance.
# Given our list of cars, do two things:
# 1. determine which five cars have the best power-to-weight ratio and print their names
# 2. of those five cars, print which ones are also in the top five for 0-to-60 time

top_five_power_to_weight = cars.sort_by{ |car| car.weight.to_f / car.horsepower.to_f }[0..4].map{|car| "#{car.make} #{car.model}"}
puts 'Top 10 power to weight ratio:'
puts top_five_power_to_weight
puts '-------------'

fastest_and_best_ratio = top_five_power_to_weight & top_five_zero_to_sixty
puts 'Fastest and Best Power to Weight:'
puts fastest_and_best_ratio
puts '-------------'

