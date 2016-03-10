# require "pry"

class ScrabbleWord
  attr_accessor :scoring

  def initialize (word)

    # return the word but lowercase
    @word = word.downcase

    # acccessing score throughout the document
    @scoring = []
  end
end

narwhol = ScrabbleWord.new("Narwhol")

# binding.pry
# puts "yo mama"
