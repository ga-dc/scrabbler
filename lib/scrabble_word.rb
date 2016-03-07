require "pry"

letter_value = { a: 1, b: 3, c: 3, d: 2, e: 1,
f: 4, g: 2, h: 4, i: 1, j: 8,
k: 5, l: 1, m: 3, n: 1, o: 1,
p: 3, q: 10, r: 1, s: 1, t: 1,
u: 1, v: 4, w: 4, x: 8, y: 4,
z: 10 }

class ScrabbleWord
  attr_accessor :word, :word_score,
  def initialize(word)
    @word = word,
    @word_score = word_score,
  end

  def lowercase_word
    return "#{@word.downcase}"
  end

  def score
  # get a word from the user
  #separate the word from a string into an array
  # assign the value of each new letter to the corresponding letter value and add those values together to come up with the word_value
  #tally that for two players for comparison 
  #

end

binding.pry
puts "done!"




# Define a method .score that returns the scrabble score of the word.
#
# Define a method .multiplier_score that takes a multiplier as an argument and returns a multiplied value of the score. (Think double or triple word score.)
#
# Here are the letter values. Think about how you might put this data in a usable format for your methods above.
#
a: 1, b: 3, c: 3, d: 2, e: 1,
f: 4, g: 2, h: 4, i: 1, j: 8,
k: 5, l: 1, m: 3, n: 1, o: 1,
p: 3, q: 10, r: 1, s: 1, t: 1,
u: 1, v: 4, w: 4, x: 8, y: 4,
z: 10
