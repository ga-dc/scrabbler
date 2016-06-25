# require "pry"
class ScrabbleWord
  attr_reader :word
  attr_accessor :word_score
  def initialize(word)
   @word = word.downcase
 end ####### End initialize Definition #########
  def score
    word_score = 0
    letter_values = {
                      a: 1, b: 3, c: 3, d: 2, e: 1,
                      f: 4, g: 2, h: 4, i: 1, j: 8,
                      k: 5, l: 1, m: 3, n: 1, o: 1,
                      p: 3, q: 10, r: 1, s: 1, t: 1,
                      u: 1, v: 4, w: 4, x: 8, y: 4,
                      z: 10
                    }
    @word.split("").each do |letter|
      word_score += letter_values[letter.to_sym]
    end
    @word_score = word_score
  end ####### End Score Method Definition #########
  def multiplier_score(multiplier)
    multiplier_score = @word_score * multiplier
    puts multiplier_score
  end ####### End multiplier_score Method Definition #########
end ####### End ScrabbleWord Class Definition #########
# binding.pry
puts "Program Execution Complete"
