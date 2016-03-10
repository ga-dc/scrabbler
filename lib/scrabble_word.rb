class ScrabbleWord

  def initialize(word)
    @word = word
  end

  def get_word
    @word.downcase.split("")
  end

  def score
    # loop thru the letters in the word array, return the value of each letter, sum the values
    letter_values = {
      a: 1, b: 3,
      c: 3, d: 2,
      e: 1, f: 4,
      g: 2, h: 4,
      i: 1, j: 8,
      k: 5, l: 1,
      m: 3, n: 1,
      o: 1, p: 3,
      q: 10, r: 1,
      s: 1, t: 1,
      u: 1, v: 4,
      w: 4, x: 8,
      y: 4, z: 10
    }
    word_score = 0
    self.get_word.each do |letter|
      word_score += letter_values[letter.to_sym]
    end
    word_score
  end

  def multiplier_score(multiplier)
    self.score * multiplier
  end

end
