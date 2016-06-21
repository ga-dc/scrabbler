=begin
Masatoshi Nishiguchi
June 21, 2016
=end

class ScrabbleWord
  attr_accessor :word

  # I make this a class attribute because it is used by each instance.
  @@letter_value = {
    a: 1, b: 3, c: 3, d: 2, e: 1,
    f: 4, g: 2, h: 4, i: 1, j: 8,
    k: 5, l: 1, m: 3, n: 1, o: 1,
    p: 3, q: 10, r: 1, s: 1, t: 1,
    u: 1, v: 4, w: 4, x: 8, y: 4,
    z: 10
  }

  # I standardize on the lowercase word.
  def initialize(word)
    @word = word.downcase
  end

  # Returns the scrabble score of the word.
  def score
    # 1. Split the word into an array of chars.
    # 2. Replace each element of the char array with its letter value.
    # 3. Sum up all the letter values.
    @word.each_char.map { |c| @@letter_value[c.to_sym] }.inject(:+)
  end

  # Takes a multiplier as an argument and returns a multiplied value of the score.
  def multiplier_score(multiplier)
    score * multiplier
  end
end
