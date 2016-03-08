# require "pry"

class ScrabbleWord

  attr_accessor = :word, :array_word, :scrabble_scores, :letter_value, :score

  def initialize(word)
    @word = word
    @score = 0
    @array_word = []
    @scrabble_scores = {
      a: 1, b: 3, c: 3, d: 2, e: 1,
      f: 4, g: 2, h: 4, i: 1, j: 8,
      k: 5, l: 1, m: 3, n: 1, o: 1,
      p: 3, q: 10, r: 1, s: 1, t: 1,
      u: 1, v: 4, w: 4, x: 8, y: 4,
      z: 10
    }
  end

  def score
    @array_word = @word.downcase.split("")

    @array_word.each do |letter|
      @score += @scrabble_scores[letter.to_sym]
    end

    @score
  end

  def multiplier_score(multiplier)
    @score = @score * multiplier
  end
end

caitlin = ScrabbleWord.new("caitlin")
caitlin.score

# binding.pry
