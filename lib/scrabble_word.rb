require "pry"







class ScrabbleWord
  attr_accessor :word
  @@letter_scores = {
    a: 1, b: 3, c: 3, d: 2, e: 1,
    f: 4, g: 2, h: 4, i: 1, j: 8,
    k: 5, l: 1, m: 3, n: 1, o: 1,
    p: 3, q: 10, r: 1, s: 1, t: 1,
    u: 1, v: 4, w: 4, x: 8, y: 4,
    z: 10
  }

  def initialize(word)
    @word = word.to_s.downcase
  end

  def score
    word_score = 0
    split_word = word.split("")
    puts split_word
    split_word.each do |x|
      word_score = word_score + @@letter_scores[x.to_sym]
    end
    puts word_score
  end
end

  my_word = ScrabbleWord.new("superduper")
  my_word.score


  binding.pry
