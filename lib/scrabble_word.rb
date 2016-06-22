require "pry"
class ScrabbleWord
  def initialize (word)
      @word = word
      @score = 0
  end
  def downcase
    @word.downcase
  end
  lettervalue = {a: 1, b: 3, c: 3, d: 2, e: 1,
                  f: 4, g: 2, h: 4, i: 1, j: 8,
                  k: 5, l: 1, m: 3, n: 1, o: 1,
                  p: 3, q: 10, r: 1, s: 1, t: 1,
                  u: 1, v: 4, w: 4, x: 8, y: 4,
                  z: 10}
  def score
      @word.downcase.each_byte do |w|
        @value += lettervalue[w.to_sym]
        puts @value
      end
      # for each byte
      #convert to a symbol
      # get value by hash
      # then add values together
      # show that value
  end

  def multiplier_score (multiplyBy)
      @value * multiplyBy
  end
end

binding.pry
