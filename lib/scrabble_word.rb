class ScrabbleWord
  $scores = {  a: 1, b: 3, c: 3, d: 2, e: 1,
            f: 4, g: 2, h: 4, i: 1, j: 8,
            k: 5, l: 1, m: 3, n: 1, o: 1,
            p: 3, q: 10, r: 1, s: 1, t: 1,
            u: 1, v: 4, w: 4, x: 8, y: 4,
            z: 10}

  def initialize(word)
    @word = word
  end

  def score
    score = 0
    letter_array = @word.split(//)
    letter_array.each do |letter|
      $scores.each do |key, value|
        if letter.downcase.to_sym == key
          score += value
        end
      end
    end
    return score
  end # end score

  def multiplier_score(number)
    unless self.score.nil? || self.score == 0
      return self.score * number
    end
  end
end # end class
