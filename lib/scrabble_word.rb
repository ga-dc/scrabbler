require "pry"

class ScrabbleWord
  attr_accessor(:word, :points, :assess, :storeWord, :pointsArr)
  def initialize(word, multiplier)
    @word = word
    @lookup = {"a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1,
      "f"=>4, "g"=>2, "h"=>4, "i"=>1, "j"=>8,
      "k"=>5, "l"=>1, "m"=>3, "n"=>1, "o"=>1,
      "p"=>3, "q"=>10, "r"=>1, "s"=>1, "t"=>1,
      "u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4,
      "z"=>10 }
    @points = 0
    @storeWord = []
    @multiplier = multiplier
  end

  def getWord
    newWord = "#{@word.downcase}"
  end

  def score
    @points = 0
    getWord.split("").each do |letter|
    @points += @lookup[letter]
    end
    @points * @multiplier
  end

end

cat = ScrabbleWord.new("Quirky", 3)

binding.pry
