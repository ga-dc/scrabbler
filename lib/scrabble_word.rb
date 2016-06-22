require "pry"
class ScrabbleWord
  def initialize (word)
      @word = word
      @score = 0
  end
  def downcase
    @word.downcase
  end
  def score
      @word.downcase.each_byte{|w|  w.chr}
  end
  def multiplier_score (multiplyBy)
      score * multiplyBy
  end
end

binding.pry
