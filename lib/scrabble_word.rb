require "pry"

class ScrabbleWord

  def initialize(word)
      @word = word
      @@letter_values = {
        a: 1, b: 3, c: 3, d: 2, e: 1,
        f: 4, g: 2, h: 4, i: 1, j: 8,
        k: 5, l: 1, m: 3, n: 1, o: 1,
        p: 3, q: 10, r: 1, s: 1, t: 1,
        u: 1, v: 4, w: 4, x: 8, y: 4,
        z: 10
      }

    end

def word
  @word.downcase
end

def score
  #
  #
  #
end

def multiplier_score(multiplier) #score times multiplier
     self.score #get score
     if multiplier == 5
       @score *= 5
   elsif multiplier == 10
       @score *= 10
    end
  end

end

binding.pry
puts "abcd"
