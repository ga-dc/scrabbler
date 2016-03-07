require "pry"

class ScrabbleWord
  attr_accessor :word

  def initialize(word)
    @word = word.downcase
  end

  def lowercase
    @word.downcase
  end

end

binding.pry

puts "squee!"
