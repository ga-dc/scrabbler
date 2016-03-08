require "pry"

class ScrabbleWord

  @scrabble_scores = [
    [1, "a", "e", "i", "l", "n", "o", "r", "s", "t", "u"],
    [2, "d", "g"],
    [3, "b", "c", "m", "p"],
    [4, "f", "h", "v", "w", "y"],
    [5, "k"],
    [8, "j", "x"],
    [10, "q", "z"]
  ]

  def initialize(word)
    @word = word
  end

  def word
    @word.downcase
  end

  def word_score
    for word in @scrabble_scores
      
    end
  end

end

caitlin = ScrabbleWord.new("caitlin")

binding.pry
