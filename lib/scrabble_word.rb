class ScrabbleWord

  VALUES = {a: 1, b: 3, c: 3, d: 2, e: 1,
            f: 4, g: 2, h: 4, i: 1, j: 8,
            k: 5, l: 1, m: 3, n: 1, o: 1,
            p: 3, q: 10, r: 1, s: 1, t: 1,
            u: 1, v: 4, w: 4, x: 8, y: 4,
            z: 10}

  def initialize(word)
    @word = word.downcase # downcase the word passed in
  end

  def score
    score = 0
    @word.split("").each do |letter| # creates ["w", "i", "n", "t", "e", "r"]
      score += VALUES[letter.to_sym] # converts letters to symbols and finds value of pair and adds values
    end
    score
  end

  def multiplier_score(multiply_val)
    multiply_val * score
  end

end
