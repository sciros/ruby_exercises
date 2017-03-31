require 'rspec'
require 'yaml'

# setup code -- loading some cars...
class Car
  attr_accessor :make, :model, :horsepower, :zero_to_sixty, :weight
end
cars = YAML.load('../data_for_exercises/cars.yml')

# Challenge 1:
# Given our list of cars, determine the ten fastest from 0 to 60 mph.
# Print their names to the screen, in ascending order of their 0-to-60 time.

# .. put solution here ..


# Challenge 2:
# Given our list of cars, determine the five with the highest horsepower.
# Print only the horsepower numbers to the screen, in descending order.

# .. put solution here ..


# Challenge 3:
# The power-to-weight ratio of a car is a good indicator of performance.
# Given our list of cars, do two things:
# 1. determine which 10 cars have the best power-to-weight ratio
# 2. of those 10 cars, list which ones are also in the top 10 for 0-to-60 time

# .. put solution here ..