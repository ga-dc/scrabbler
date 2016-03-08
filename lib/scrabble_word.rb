require "pry"

class ScrabbleWord
  attr_accessor :word
  @@all = 0

  def initialize(word)
    @word = word
        return @word.downcase
  end

  def score
    score = 0
    @score = { a: 1, b: 3, c: 3, d: 2, e: 1,
    f: 4, g: 2, h: 4, i: 1, j: 8,
    k: 5, l: 1, m: 3, n: 1, o: 1,
    p: 3, q: 10, r: 1, s: 1, t: 1,
    u: 1, v: 4, w: 4, x: 8, y: 4,
    z: 10
    }
  end

  #function to get score


    def multiplier_score (multiplier)
      @multiplier
    end

  #function to get score w multiplier
  
  end

end






# Define a method .score that returns the scrabble score of the word.
#
# Define a method .multiplier_score that takes a multiplier as an argument and returns a multiplied value of the score. (Think double or triple word score.)
end
    def score




end
binding.pry
