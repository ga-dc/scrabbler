class ScrabbleWord
attr_reader :word
  def initialize word
    @word = word.downcase
    @wrd_score = 0
  end

  def score
    points = {
      a:  1, b:  3, c:  3, d:  2, e:  1,
      f:  4, g:  2, h:  4, i:  1, j:  8,
      k:  5, l:  1, m:  3, n:  1, o:  1,
      p:  3, q:  10, r:  1, s:  1, t:  1,
      u:  1, v:  4, w:  4, x:  8, y:  4,
      z:  10
    }
    @word.each_char do |chr|
      @wrd_score += points[chr.to_sym]
    end
    return @wrd_score
  end
  def multiplier_score(times)
    times * score
  end

end

steve = ScrabbleWord.new("xzqqxzqxzzqx")
puts steve.score
puts steve.multiplier_score(3)
