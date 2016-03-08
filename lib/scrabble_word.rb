require 'pry'

class ScrabbleWord

  attr_accessor :letter_values

  def initialize word
    @score = 0
    @word = word
    @letter_values = {
      a: 1, b: 3, c: 3, d: 2, e: 1,
      f: 4, g: 2, h: 4, i: 1, j: 8,
      k: 5, l: 1, m: 3, n: 1, o: 1,
      p: 3, q: 10, r: 1, s: 1, t: 1,
      u: 1, v: 4, w: 4, x: 8, y: 4,
      z: 10
    }
  end

  #getter for @word
  def get_word
    @word.downcase
  end

  def score
    #enumerate thru word and check if its chars match keys from letter_values
    #add up the values of the matching keys to get score
      #convert word to an array to loop thr
      #for each letter in word_check,
      #loop thru letter_values and find a key that matches
      #add matching keys' value to a score instance variable
  end

  def multiplier_score
  end

end

blue = ScrabbleWord.new('blue')
binding.pry
