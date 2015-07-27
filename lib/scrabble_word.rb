class ScrabbleWord
  attr_reader :word
  #word value hash
  @@values = {
   a: 1, b: 3, c: 3, d: 2, e: 1,
   f: 4, g: 2, h: 4, i: 1, j: 8,
   k: 5, l: 1, m: 3, n: 1, o: 1,
   p: 3, q: 10, r: 1, s: 1, t: 1,
   u: 1, v: 4, w: 4, x: 8, y: 4,
   z: 10
  }
  # create instance variable for word
  def initialize(word)
    @word = word.downcase
  end

  def score
    @score = 0
    # split word into chars
    letters = self.word.split("")
    # add each letter's value to the total
    letters.each do |letter|
      @score = @score + @@values[letter.to_sym]
    end
    return @score
  end
  # multiply word score by multiplier
  def multiplier_score(multiplier)
    score_multiplied = self.score * multiplier
    return score_multiplied
  end
end
