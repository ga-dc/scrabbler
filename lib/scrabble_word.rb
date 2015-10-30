class ScrabbleWord
  attr_accessor :score, :multiplier_score
  def initialize(word)
    @word = word
  end

  def score
    score = 0
    letter_val =
    {a: 1, b: 3, c: 3, d: 2, e: 1,
    f: 4, g: 2, h: 4, i: 1, j: 8,
    k: 5, l: 1, m: 3, n: 1, o: 1,
    p: 3, q: 10, r: 1, s: 1, t: 1,
    u: 1, v: 4, w: 4, x: 8, y: 4,
    z: 10}

    @word.split("").each do |letter|
      score += letter_val[letter.downcase.to_sym]
    end
    return score
  end

  def multiplier_score(num_val)
    return num_val * score
  end
end
