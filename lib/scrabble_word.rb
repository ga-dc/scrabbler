class ScrabbleWord
  def initialize(word)
    @word = word
  end

  def word
    @word.downcase
  end

  def score
    if @word.length == 1
      return 1
    end
  end

  def multiplier_score
  end


end
