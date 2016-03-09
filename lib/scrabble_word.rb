require "pry"

letters = {
  a: 1, b: 3, c: 3, d: 2, e: 1,
  f: 4, g: 2, h: 4, i: 1, j: 8,
  k: 5, l: 1, m: 3, n: 1, o: 1,
  p: 3, q: 10, r: 1, s: 1, t: 1,
  u: 1, v: 4, w: 4, x: 8, y: 4,
  z: 10
}

class ScrabbleWord

#* Define a class named ScrabbleWord with an `initialize` method that takes one argument, `word`, and stores it in an instance variable `@word`.
  def initialize(word)
    @word = word
  end

#* Write a "getter" for this instance variable `@word` that returns the word as a lowercase string.
  def lowercase_string
    return @word.downcase  #do I need .to_i?
  end

#* Define a method `.score` that returns the scrabble score of the word.
  def score
    #Convert @word string to an array with indexes representing each letter of @word
    
    #I will probably need some sort of .each loop to iterate through each letter of the word array

  end

#* Define a method `.multiplier_score` that takes a multiplier as an argument and returns a multiplied value of the score. (Think double or triple word score.)
  def multiplier_score

  end

end

binding.pry
