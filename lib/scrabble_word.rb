require "pry"

class ScrabbleWord

  def initialize (word)
    @word = word
  end
  def word
    @word.downcase!
  end
  # split the word to identify each letter
  # associate each letter with the value assigned
  def score
    score = 0
    scores = { a: 1, b: 3, c: 3, d: 2, e: 1,
              f: 4, g: 2, h: 4, i: 1, j: 8,
              k: 5, l: 1, m: 3, n: 1, o: 1,
              p: 3, q: 10, r: 1, s: 1, t: 1,
              u: 1, v: 4, w: 4, x: 8, y: 4,
              z: 10}
    @word.split("").each do |letter|
      score += scores[letter.to_sym]
    end
    return score
  end
  #multiplier
  def multiplied (multiplier)
    return multiplier * score
  end
end

binding.pry

puts "end of file"
