require "pry"

class ScrabbleWord
  attr_accessor :word, :score, :word_score

  def initialize(word)
    if word.length < 2
      puts "Your word is too short! Please enter a word with at least two letters."
    elsif word.is_a?(String)
      @word = word.downcase
    end
  end

  def lcase
    @word.downcase
  end

  def score
    @word_score = 0
    points = {
      a: 1, b: 3, c: 3, d: 2, e: 1,
      f: 4, g: 2, h: 4, i: 1, j: 8,
      k: 5, l: 1, m: 3, n: 1, o: 1,
      p: 3, q: 10, r: 1, s: 1, t: 1,
      u: 1, v: 4, w: 4, x: 8, y: 4,
      z: 10
    }
    @word.downcase.each_char do |letter|
      @word_score += points[letter.intern]
    end
    puts @word_score
  end

  def multiplier_score(multiplier)
      @word_score * multiplier
  end

end

# indigo = ScrabbleWord.new("indigo")
#
# rutabaga = ScrabbleWord.new("rutabaga")
#
# indigo.score

# rutabaga.score.multiplier_score(3)

binding.pry

puts "squee!"

# pseudocode
#
# I need a method that calculates the score of a word by calculating the value of each letter in the word
# =>  to do this, i need to break apart the word and get the value per letter, then add it back up
