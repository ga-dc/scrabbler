require "pry"

class ScrabbleWord
  attr_accessor :word, :score

  def initialize(word)
    @word = word
  end

  def lcase
    @word.downcase
  end

  def score
    score = 0
    points = {
      a: 1, b: 3, c: 3, d: 2, e: 1,
      f: 4, g: 2, h: 4, i: 1, j: 8,
      k: 5, l: 1, m: 3, n: 1, o: 1,
      p: 3, q: 10, r: 1, s: 1, t: 1,
      u: 1, v: 4, w: 4, x: 8, y: 4,
      z: 10
    }
    @word.each_char do |letter|
      score += points[letter]
    end
    puts score
  end

  # def score
  #   @word.split("").reduce(0) {total, current | total + @points[current]}
  #   puts total
  # end

  # @points =
  #   {letter: "a", point: 1}, { letter: "b", point: 3}, {letter: "c", point: 3}, {letter: "d", point: 2}, {letter: "e", point: 1},
  #   {letter: "f", point: 4}, {letter: "g", point: 2}, {letter: "h", point: 4}, {letter: "i", point: 1}, {letter: "j", point: 8},
  #   {letter: "k", point: 5}, {letter: "l", point: 1}, {letter: "m", point: 3}, {letter: "n", point: 1}, {letter: "o", point: 1},
  #   {letter: "p", point: 3}, {letter: "q", point: 10}, {letter: "r", point: 1}, {letter: "s", point: 1}, {letter: "t", point: 1},
  #   {letter: "u", point: 1}, {letter: "v", point: 4}, {letter: "w", point: 4}, {letter: "x", point: 8}, {letter: "y", point: 4},
  #   {letter: "z", point: 10}


  # @points = {
  #   "a" => 1, "b" => 3, "c" => 3, "d" => 2, "e" => 1,
  #   "f" => 4, "g" => 2, "h" => 4, "i" => 1, "j" => 8,
  #   "k" => 5, "l" => 1, "m" => 3, "n" => 1, "o" => 1,
  #   "p" => 3, "q" => 10, "r" => 1, "s" => 1, "t" => 1,
  #   "u" => 1, "v" => 4, "w" => 4, "x" => 8, "y" => 4,
  #   "z" => 10
  # }


end

indigo = ScrabbleWord.new("indigo")

rutabaga = ScrabbleWord.new("rutabaga")

binding.pry

puts "squee!"

# pseudocode
#
# I need a method that calculates the score of a word by calculating the value of each letter in the word
