class ScrabbleWord
  def initialize word
    @word = word.to_str.downcase
    @score_hash = { a: 1, b: 3, c: 3, d: 2, e: 1,
                    f: 4, g: 2, h: 4, i: 1, j: 8,
                    k: 5, l: 1, m: 3, n: 1, o: 1,
                    p: 3, q: 10, r: 1, s: 1, t: 1,
                    u: 1, v: 4, w: 4, x: 8, y: 4,
                    z: 10 }
  end
  def score_hash
    @score_hash
  end
  def multiplier_score multiplier
    return score*multiplier
  end
  def word
    @word
  end
  def word= word
    @word = word.to_str.downcase
  end
  def score
    score = 0
    char_array = @word.split("")
    char_array.each{ |letter| score+= @score_hash[letter.to_sym] }
    return score
  end
end

a = ScrabbleWord.new("a")
a.score
