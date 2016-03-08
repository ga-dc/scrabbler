require "pry"


class ScrabbleWord
  attr_accessor :word

  def initialize(word)
    @word = word
    @lowercase = @word.downcase.split("")
  end

  def score
    wordValue = 0
    letterValue =  {  a: 1, b: 3, c: 3, d: 2, e: 1,
                f: 4, g: 2, h: 4, i: 1, j: 8,
                k: 5, l: 1, m: 3, n: 1, o: 1,
                p: 3, q: 10, r: 1, s: 1, t: 1,
                u: 1, v: 4, w: 4, x: 8, y: 4,
                z: 10}
    @lowercase.each do |letter|
      wordValue += letterValue[letter.to_sym]
    end
    binding.pry
    return wordValue
  end
end


testword = ScrabbleWord.new("exampleword")
testword.score


# binding.pry
# puts "done!"




# From: /Users/iWyatt/wdi/HomeWorkAssignments/scrabbler/lib/scrabble_word.rb @ line 23 ScrabbleWord#score:
#
#     12: def score
#     13:   wordValue = 0
#     14:   letterValue =  {  a: 1, b: 3, c: 3, d: 2, e: 1,
#     15:               f: 4, g: 2, h: 4, i: 1, j: 8,
#     16:               k: 5, l: 1, m: 3, n: 1, o: 1,
#     17:               p: 3, q: 10, r: 1, s: 1, t: 1,
#     18:               u: 1, v: 4, w: 4, x: 8, y: 4,
#     19:               z: 10}
#     20:   @lowercase.each do |letter|
#     21:     wordValue += letterValue[letter.to_sym]
#     22:   end
#  => 23:   binding.pry
#     24:   return wordValue
#     25: end
#
# [1] pry(#<ScrabbleWord>)> letterValue
# => {:a=>1,
#  :b=>3,
#  :c=>3,
#  :d=>2,
#  :e=>1,
#  :f=>4,
#  :g=>2,
#  :h=>4,
#  :i=>1,
#  :j=>8,
#  :k=>5,
#  :l=>1,
#  :m=>3,
#  :n=>1,
#  :o=>1,
#  :p=>3,
#  :q=>10,
#  :r=>1,
#  :s=>1,
#  :t=>1,
#  :u=>1,
#  :v=>4,
#  :w=>4,
#  :x=>8,
#  :y=>4,
#  :z=>10}
# [2] pry(#<ScrabbleWord>)> quit
# ~/wdi/HomeWorkAssignments/scrabbler/lib (AdrianWyattSolution_scrabbler *)
# $ ruby scrabble_word.rb
#
# From: /Users/iWyatt/wdi/HomeWorkAssignments/scrabbler/lib/scrabble_word.rb @ line 23 ScrabbleWord#score:
#
#     12: def score
#     13:   wordValue = 0
#     14:   letterValue =  {  a: 1, b: 3, c: 3, d: 2, e: 1,
#     15:               f: 4, g: 2, h: 4, i: 1, j: 8,
#     16:               k: 5, l: 1, m: 3, n: 1, o: 1,
#     17:               p: 3, q: 10, r: 1, s: 1, t: 1,
#     18:               u: 1, v: 4, w: 4, x: 8, y: 4,
#     19:               z: 10}
#     20:   @lowercase.each do |letter|
#     21:     wordValue += letterValue[letter.to_sym]
#     22:   end
#  => 23:   binding.pry
#     24:   return wordValue
#     25: end
#
# [1] pry(#<ScrabbleWord>)> letterValue.keys
# => [:a,
#  :b,
#  :c,
#  :d,
#  :e,
#  :f,
#  :g,
#  :h,
#  :i,
#  :j,
#  :k,
#  :l,
#  :m,
#  :n,
#  :o,
#  :p,
#  :q,
#  :r,
#  :s,
#  :t,
#  :u,
#  :v,
#  :w,
# [2] pry(#<ScrabbleWord>)> letterValue.keys[0]
# => :a
# [3] pry(#<ScrabbleWord>)> letterValue.keys[0].is_a? Symbol
# => true
# [4] pry(#<ScrabbleWord>)> letterValue.keys[0].is_a? String
# => false
# [5] pry(#<ScrabbleWord>)> 
