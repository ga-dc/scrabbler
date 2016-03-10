require "pry"

#defined class 'ScrabbleWord'
class ScrabbleWord

  #created initialize method with instance variable
  def initialize (word)
    @word = word
  end


  def score
    letters = @word.downcase.split("")
    score = 0
    points = {
      a: 1, b: 3, c: 3, d: 2, e: 1,
      f: 4, g: 2, h: 4, i: 1, j: 8,
      k: 5, l: 1, m: 3, n: 1, o: 1,
      p: 3, q: 10, r: 1, s: 1, t: 1,
      u: 1, v: 4, w: 4, x: 8, y: 4,
      z: 10
    }

    symbols = letters.map do |letter|
      letter.to_sym
    end

    symbols.each do |letter|
      score += points[letter]
    end
    score
  end

# multiplies score
  def multiplier_score(multiplier)
    return multiplier * score
  end
end

binding.pry
puts "last line"
