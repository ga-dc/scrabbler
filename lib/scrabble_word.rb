class ScrabbleWord

  attr_accessor :score
  # puts @score as a getter and setter method w/o writing out def

  @@values = {a:1, b:3, c:3, d:2, e:1,
  f:4, g:2, h:4, i:1, j:8,
  k:5, l:1, m:3, n:1, o:1,
  p:3, q:10, r:1, s:1, t:1,
  u:1, v:4, w:4, x:8, y:4,
  z:10} # used class variable b/c it is a constant, these won't change

  def initialize(letter)
    @score = 0
    letter = letter.downcase # changes letter to lower case
    letter.split("").each do |char|
      @score += @@values[char.to_sym] # turns char into  a symbol, to use as key from hash, to grab the value
    end
  end

  def multiplier_score(num) # method to multiply score arbitrarily
    @score = @score*num
  end


end


# @@values[letter.to_sym]
