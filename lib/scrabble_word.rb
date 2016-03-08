require "pry"
#create a class called ScrabbleWord
class ScrabbleWord
#intiliaze method with argument 'word' and make it instance var
  def intialize word
    @word = word
  end
#method score to find point values of each letter
  def score
    score = 0
    scores = { a: 1, b: 3, c: 3, d: 2, e: 1,
    f: 4, g: 2, h: 4, i: 1, j: 8,
    k: 5, l: 1, m: 3, n: 1, o: 1,
    p: 3, q: 10, r: 1, s: 1, t: 1,
    u: 1, v: 4, w: 4, x: 8, y: 4,
    z: 10
    }
    #split word into an array and find value of each letter
    @word.downcase.split(",").each do |letters|


  end
  #for double or triple pt value of letters, multiply the score
  def multiplier_score(multiplier)
    return multiplier * score
  end

end

binding.pry
