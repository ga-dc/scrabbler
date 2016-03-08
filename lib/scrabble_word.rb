require "pry"

class ScrabbleWord
  attr_accessor :word

  def initialize word
    @word = word
  end

  def score
    score = 0
    letter_values = {
      a: 1, b: 3, c: 3, d: 2, e: 1,
      f: 4, g: 2, h: 4, i: 1, j: 8,
      k: 5, l: 1, m: 3, n: 1, o: 1,
      p: 3, q: 10, r: 1, s: 1, t: 1,
      u: 1, v: 4, w: 4, x: 8, y: 4,
      z: 10
    }
    
    total_word = @word.split("").map do |letter|
      letter_values[letter.to_sym]
    end
    score = total_word.inject(:+)
  end

def multiplier_score multiplier
  score * multiplier
end
end

hello = ScrabbleWord.new("hello")
hello.score
# puts hello.multiplier_score(2)

binding.pry
