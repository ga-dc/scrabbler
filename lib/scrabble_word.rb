
# require "pry"

#
@@tile_values =  {:a=>1,:b =>3,:c =>3,:d =>2,:e =>1,:f =>4,:g =>2,:h =>4}
tiles_b = {:i =>1,:j=>8,:k=>5,:l=>1,:m=>3,:n=>1,:o=>1,:p=>3,:q=>10}
tiles_c = {:r=>1,:s=>1,:t=>1,:u=>1,:v=>4,:w=>4,:x=>8,:y=>4,:z=>10}
@@tile_values.merge!(tiles_b)
@@tile_values.merge!(tiles_c)
# puts @@tile_values
@word.score = 0


class ScrabbleWord
  def initialize(word)
    @word = word
  end
  def word
    @word.downcase
  end
  def score
    # scroll through a word, look up the score of the letters, and return the score of the wor
    @word.each do |letter|
      srch = ":" + letter
      puts "srch = " + srch
      @word.score = @word.score + @@tile_values[srch]
    end
  end
  def multiplier_score(mult)
    # multiply @score by the number passed to it

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
