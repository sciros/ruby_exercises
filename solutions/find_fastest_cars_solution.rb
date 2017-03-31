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

# Challenge 2:
# Given our list of cars, determine the five with the highest horsepower.
# Print only the horsepower numbers to the screen, in descending order.

# Challenge 3:
# The power-to-weight ratio of a car is a good indicator of performance.
# The fewer pounds per horsepower, the better the performance.
# Given our list of cars, do two things:
# 1. determine which five cars have the best power-to-weight ratio and print their names
# 2. of those five cars, print which ones are also in the top five for 0-to-60 time


