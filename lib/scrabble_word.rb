# require "pry"


class ScrabbleWord
  def initialize(word)

    @score = 0
    @scoreChart = {
      a: 1, b: 3, c: 3, d: 2, e: 1,
      f: 4, g: 2, h: 4, i: 1, j: 8,
      k: 5, l: 1, m: 3, n: 1, o: 1,
      p: 3, q: 10, r: 1, s: 1, t: 1,
      u: 1, v: 4, w: 4, x: 8, y: 4,
      z: 10
    }

  @word = word
  end

  def score
    wordScore = @word.downcase.split("")
    wordScore.each do |letter|
      @score += @scoreChart[letter.to_sym]
    end
    return @score
  end

  def multiplier_score(mult)
    score
    @score = @score * mult
  end
end


wd = ScrabbleWord.new("fiZZbuzz")

# binding.pry
# puts "all done"
