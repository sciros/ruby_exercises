require 'rspec'
require 'watir'

# 1. Using a web driver, visit a page
# I recommend visiting a static blog page such as 'http://sciros.net/blog/?p=79'
#
# 2. Then take two words (or parts of a word) that appear multiple times on the page
# For the page above, I recommend the words 'test' and 'convention'
#
# 3. For those words, find THE section of the page where those two words (or parts of a word,
# in other words feel free to use regex instead of direct matching) appear nearest to each other
# (distance measured by the number of words between them).
#
# 4. Print that section, capturing both of the words, to the screen.
