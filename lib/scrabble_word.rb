# require "pry"

# Define a class named ScrabbleWord
class ScrabbleWord
  # Write a "getter" for this instance variable @word that returns the word as a lowercase string.
  attr_accessor :word, :letters, :sum_score

  # make converter a class variable
  @@converters = {
    a: 1, b: 3, c: 3, d: 2, e: 1,
    f: 4, g: 2, h: 4, i: 1, j: 8,
    k: 5, l: 1, m: 3, n: 1, o: 1,
    p: 3, q: 10, r: 1, s: 1, t: 1,
    u: 1, v: 4, w: 4, x: 8, y: 4,
    z: 10
  }

  # Write an initialize method that takes one argument, word, and stores it in an instance variable @word.
  def initialize(word)
    @word = word.downcase
    # split word into string of letters
    @letters = @word.split("")
  end

  # Define a method .score that returns the scrabble score of the word.
  def score
    word_score = 0
    @letters.each do |letter|
      # for each letter, convert letter to symbol
      # word score = 0, word score = + word score plus value of letter
      word_score = word_score + @@converters[letter.to_sym]
    end
    #return sum of letters
    @sum_score = word_score
    return word_score
  end

  # Define a method .multiplier_score that takes a multiplier as an argument and returns a multiplied value of the score. (Think double or triple word score.)
  def multiplier_score multiplier
    self.sum_score * multiplier
  end

end

# binding.pry
