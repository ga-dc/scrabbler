class ScrabbleWord
  attr_accessor :word

def initialize(word)
  @word = word

end

def score
  @word.downcase.to_s
end


end
