require "pry"

class ScrabbleWord
  attr_accessor(:word, :points, :assess, :storeWord, :pointsArr)
  def initialize(word)
    @word = word
    @lookup = {"a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1,
      "f"=>4, "g"=>2, "h"=>4, "i"=>1, "j"=>8,
      "k"=>5, "l"=>1, "m"=>3, "n"=>1, "o"=>1,
      "p"=>3, "q"=>10, "r"=>1, "s"=>1, "t"=>1,
      "u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4,
      "z"=>10 }
    @points = 0
    @storeWord = []
  end

  def getWord
    newWord = "#{@word.downcase}"
  end

  def score
    @storeWord = getWord.split("")
    @storeWord.each do |letter|
    @points += @lookup[letter]
    end
    @points
  end

end

bip = ScrabbleWord.new("Quirky")


binding.pry


# need a place to store the points per letter
# split apart the scrabble word
# assess each letter against the points per letter hash
#  after each letter is assessed, store the cumulative value of the word somewhere
