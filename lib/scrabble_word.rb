require "pry"

class  ScrabbleWord
  def initialize(word, multiply)
    @word = word
    @points = 0
    @multiply = multiply
  end


# this is a getter for this instance variable
  def getName
    "#{@word.downcase}"
    # this turns the word into a string
  end


# this makes the word go into an array called chosenWord
  def chosenWord
    scoreEngine = {
      "a"=>1, "b"=>3, "c"=>3, "d"=>2, "e"=>1,
      "f"=>4, "g"=>2, "h"=>4, "i"=>1, "j"=>8,
      "k"=>5, "l"=>1, "m"=>3, "n"=>1, "o"=>1,
      "p"=>3, "q"=>10, "r"=>1, "s"=>1, "t"=>1,
      "u"=>1, "v"=>4, "w"=>4, "x"=>8, "y"=>4,
      "z"=>10 }
    "#{@word.downcase}".split("").each do |char|
      @points += scoreEngine[char]
    end
    @points * @multiply
  end




# this converts the letters to numbers
  def convertToNum

  end

end

binding.pry


# save my word into an array
# compare my word to the points array
# get the values of my letters
# letters need to be converted into numbers
# add those letters
# that will be my point
