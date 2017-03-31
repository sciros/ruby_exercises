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

browser = Watir::Browser.new :chrome
browser.goto 'http://sciros.net/blog/?p=64'
text = browser.text

@words = text.split(/\W+/)

def find_indices_of_word(word)
  @words.each_index.select{|i| @words[i] =~ word}
end

indices_of_word1 = find_indices_of_word /estimate/
indices_of_word2 = find_indices_of_word /error/

closest_pairs = []

indices_of_word1.each do |word1_index|
  closest_word2_index = indices_of_word2.min_by{ |word2_index| (word1_index - word2_index).abs}
  closest_pairs << [word1_index, closest_word2_index]
end

closest_pair = closest_pairs.min_by{ |pair| (pair[0] - pair[1]).abs }

puts @words[closest_pair.min..closest_pair.max]