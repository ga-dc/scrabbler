
# require "pry"

#

class ScrabbleWord
attr_accessor :word
  def initialize(word)
    @word = word
  end
  def word
    @word.downcase
  end
  def score
    score = 0
    tile_values = {a: 1, b: 3, c: 3, d: 2, e: 1,
      f: 4, g: 2, h: 4, i: 1, j: 8,
      k: 5, l: 1, m: 3, n: 1, o: 1,
      p: 3, q: 10, r: 1, s: 1, t: 1,
      u: 1, v: 4, w: 4, x: 8, y: 4,
      z: 10 }
      @word.downcase.chars.to_a.each do |letter|
        tile_score = tile_values[letter.to_sym]
        score += tile_score
      end
      return score
    end
    def multiplier_score(mult)
      # multiply @score by the number passed to it
      return score * mult
    end
  end

  x = ScrabbleWord.new("yada")


  # binding.pry
  puts "All Done"

  # Your goal is to add code to `lib/scrabble_word.rb` such that all the tests pass. Until you get to the bonus, **there is no need to modify any files except `lib/scrabble_word.rb`**.
  #
  # If you've never played the game Scrabble before, you may want to ask your neighbor about the rules of the game and how words are scored.
  #
  # ## Prompt
  #
  # * Define a class named ScrabbleWord with an `initialize` method that takes one argument, `word`, and stores it in an instance variable `@word`.
  #
  # * Write a "getter" for this instance variable `@word` that returns the word as a lowercase string.
  #
  # * Define a method `.score` that returns the scrabble score of the word.
  #
  # * Define a method `.multiplier_score` that takes a multiplier as an argument and returns a multiplied value of the score. (Think double or triple word score.)
  #
  # Here are the letter values. Think about how you might put this data in a usable format for your methods above.
  #
  # ```
  # a: 1, b: 3, c: 3, d: 2, e: 1,
  # f: 4, g: 2, h: 4, i: 1, j: 8,
  # k: 5, l: 1, m: 3, n: 1, o: 1,
  # p: 3, q: 10, r: 1, s: 1, t: 1,
  # u: 1, v: 4, w: 4, x: 8, y: 4,
  # z: 10
