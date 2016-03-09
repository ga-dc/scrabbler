class ScrabbleWord
  attr_reader :word

  def initialize(word)
    @word = word.downcase
  end

  def score
    letter_values = {
      a: 1, b: 3, c: 3, d: 2, e: 1,
      f: 4, g: 2, h: 4, i: 1, j: 8,
      k: 5, l: 1, m: 3, n: 1, o: 1,
      p: 3, q: 10, r: 1, s: 1, t: 1,
      u: 1, v: 4, w: 4, x: 8, y: 4,
      z: 10
    }
    score = 0
    #Need to take the variable @word and convert it to its point values
    #split the word into an array of letters
    letters = @word.each_char.to_a
    #add the values together to achieve the point value
    letters.each do |letter|
      score += letter_values[letter.to_sym]
    end
    return score
  end

  def multiplier_score(multiplier)
    self.score * multiplier
  end

end
