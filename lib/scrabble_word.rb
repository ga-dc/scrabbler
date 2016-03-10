require "pry"

#Define a class named ScrabbleWord...

class ScrabbleWord
  attr_accessor :word

#with an `initialize` method that takes one argument, "word", and stores it in an instance variable "@word"...

  def initialize(word)
    @word = word.downcase
  end

#Define a method `.score` that returns the scrabble score of the word.

  def score
    tile_values = {a: 1, b: 3, c: 3, d: 2, e: 1, f :4, g: 2, h: 4, i: 1, j: 8, k: 5, l: 1, m: 3, n: 1, o: 1, p: 3, q: 10, r: 1, s: 1, t: 1, u: 1, v: 4, w: 4, x: 8, y: 4, z: 10}
    }
    score = 0
  #Take variable @word and conver it to a tile value
  #split the word into an array (of letters)
    letters = @word.each_char.to_a
  #add together
    letters.each do |letter|
      score += tile_values[letter.to_sym]
  end
  return score
end
  #Define a method `.multiplier_score` that takes a multiplier as an argument and returns a multiplied value of the score. (Think double or triple word score.)

def multiplier_score(multiplier)
    score * multiplier
  end
end

binding.pry
return "fixing pry"
