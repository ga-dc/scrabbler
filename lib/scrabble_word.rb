class ScrabbleWord
  def initialize(word)
    @word = word.downcase
    # needed to make this downcase instead of the getter, otherwise can't pass tests, why?
  end
  def word
    @word
  end
  # I can comment this getter method out and still pass the tests, downcase doesn't work on it as well
  def score
    letter_scores = {
      a: 1, b: 3, c: 3, d: 2, e: 1,
      f: 4, g: 2, h: 4, i: 1, j: 8,
      k: 5, l: 1, m: 3, n: 1, o: 1,
      p: 3, q: 10, r: 1, s: 1, t: 1,
      u: 1, v: 4, w: 4, x: 8, y: 4,
      z: 10
    }
    word_score = 0
    @word.split("").each{|letter| word_score += letter_scores[letter.to_sym]}
    return word_score
  end
  def multiplier_score(multiplier)
    score*multiplier
  end
end
