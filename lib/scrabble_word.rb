require "pry"

class ScrabbleWord
  attr_accessor :word
  @@all = 0

  def initialize(word)
    @word = word

    def get_word
      return @word.downcase
    end

    def score
      score = 0
      @score = { a: 1, b: 3, c: 3, d: 2, e: 1,
        f: 4, g: 2, h: 4, i: 1, j: 8,
        k: 5, l: 1, m: 3, n: 1, o: 1,
        p: 3, q: 10, r: 1, s: 1, t: 1,
        u: 1, v: 4, w: 4, x: 8, y: 4,
        z: 10
      }
    @word.downcase.split('') letters.each do |letter|
      score =letter.to_s * letter
    end

    def multiplier_score (multiplier)

      doubles = multiplier.map do |score|
        score * 2
      triples = multiplier.map do |score|
        score * 3
        multiplier * score
        return TotalScore
      end
    end
    binding.pry
