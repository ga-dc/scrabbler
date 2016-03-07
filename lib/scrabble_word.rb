require "pry"

class ScrabbleWord

  @@scoreVals = [1,3,3,2,1,4,2,4,1,8,5,1,3,1,1,3,10,1,1,1,1,4,4,8,4,10]

  def initialize(word)
    @word = word
  end

  def get_word
    return @word.downcase
  end

  def get_score
    temp = 0
    # c-97 equals the numerical value of a character from 0..25
    self.get_word.each_byte {|c| temp += @@scoreVals[c-97]}
    return temp
  end

  def multiplier_score(multi)
    return multi * self.get_score
  end

end

test = [ ScrabbleWord.new("TeSt"),
         ScrabbleWord.new("test"),
         ScrabbleWord.new("Zebra"),
         ScrabbleWord.new("zebrA"),
         ScrabbleWord.new("Z"),
         ScrabbleWord.new("z"),
         ScrabbleWord.new("zqxj"),
         ScrabbleWord.new("ZQXJ")]


binding.pry
