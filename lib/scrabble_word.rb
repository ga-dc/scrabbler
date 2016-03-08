require "pry"

# all letters in one hash
letters = {
  a: 1, b: 3, c: 3, d: 2, e: 1,
  f: 4, g: 2, h: 4, i: 1, j: 8,
  k: 5, l: 1, m: 3, n: 1, o: 1,
  p: 3, q: 10, r: 1, s: 1, t: 1,
  u: 1, v: 4, w: 4, x: 8, y: 4,
  z: 10
}

# defined class 'ScrabbleWord'
class ScrabbleWord

  # created initialize method with instance variable
  def initialize (word)
    @word = word
  end

  #getter method for @word, converts to lowercase string
  def get_word
    "#{@word.downcase.to_s}"
  end


  def score
    #take word and split
    #.each on every letter
    # return value and add to overall score
  end



end
jelly = ScrabbleWord.new("jelly")
binding.pry
puts "last line"
