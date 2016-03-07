require "pry"

class ScrabbleWord
  def initialize(word)
    @word = word
  end

  def getWord
    "#{@word.downcase}"
  end

  def score
    puts "working on this"
  end

end



binding.pry
