require "pry"

class ScrabbleWord
  attr_reader :word
  def initialize(word)
   @word = word.downcase!
  end
  def score(word)
    word_score = 0
    # Define a method `.score` that returns the scrabble score of the word.
    # separate word by letter
    # compare each letter with letter value on the legend
    # keep running total of letter scores
    # return word score
   return word_score
  end
  def multiplier_score
    # * Define a method `.multiplier_score` that takes a multiplier as an argument
    # and returns a multiplied value of the score. (Think double or triple word score.)
  end
end



# # Here are the letter values. Think about how you might put this data in a
# usable format for your methods above.

# ```
# a: 1, b: 3, c: 3, d: 2, e: 1,
# f: 4, g: 2, h: 4, i: 1, j: 8,
# k: 5, l: 1, m: 3, n: 1, o: 1,
# p: 3, q: 10, r: 1, s: 1, t: 1,
# u: 1, v: 4, w: 4, x: 8, y: 4,
# z: 10
# ```

# my_hash = {a: 1, b:2}
# my_letter = "b"
# my_value = my_hash[my_letter.to_sym]

## Deliverable

# Submit a pull request with your current progress. Include your Completeness
# (1-5) and Comfort (1-5). We recommend you include your pseudocode, comments,
# and descriptions of areas where you had difficulty.
binding.pry

puts "Program Execution Complete"
