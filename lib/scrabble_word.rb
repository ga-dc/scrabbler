# Define a class named ScrabbleWord
class ScrabbleWord
  # Write a "getter" for this instance variable @word that returns the word as a lowercase string.
  attr_accessor :word
  # Write an initialize method that takes one argument, word, and stores it in an instance variable @word.
  def initialize(word)
    @word = word.downcase
  end

  # Define a method .score that returns the scrabble score of the word.
  def score

  end

  # Define a method .multiplier_score that takes a multiplier as an argument and returns a multiplied value of the score. (Think double or triple word score.)
  def multiplier_score multiplier
    self.score * multiplier    
  end

end
