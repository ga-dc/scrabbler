
#Define a class named ScrabbleWord with an initialize method that takes
#one argument, word, and stores it in an instance variable @word.
#Write a "getter" for this instance variable @word that returns the word as a lowercase string.

class ScrabbleWord
  SCORES = {  a: 1, b: 3, c: 3, d: 2, e: 1,
              f: 4, g: 2, h: 4, i: 1, j: 8,
              k: 5, l: 1, m: 3, n: 1, o: 1,
              p: 3, q: 10, r: 1, s: 1, t: 1,
              u: 1, v: 4, w: 4, x: 8, y: 4,
              z: 10}

  def initialize(word)
    @word = word
  end

#Define a method .score that returns the scrabble score of the word.
  def score
    score = 0
    @word.each_char do |letter|
      score += SCORES[letter.downcase.to_sym]
    end
    score
  end

#Define a method .multiplier_score that takes a multiplier as an argument
#and returns a multiplied value of the score. (Think double or triple word score.)
  def multiplier_score(num)
    return num * self.score
  end

end #of class
