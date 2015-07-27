class ScrabbleWord
  attr_reader :word
# ^ Write a "getter" for this instance variable `@word` that returns the word as a lowercase string.
  def initialize(word)
    @word = word
  end
end

  def score
# ^ Define a method `.score` that returns the scrabble score of the word.
  end

  def multiplier_score
# ^ Define a method `.multiplier_score` that takes a multiplier as an argument and returns a multiplied value of the score. (Think double or triple word score.)
  end
