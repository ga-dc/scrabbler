require "pry"


class  ScrabbleWord
  def initialize(word)
    @word = word
  end

  def getName
    "#{@word.downcase}"
    # this turns the word into a string
  end
end

binding.pry
