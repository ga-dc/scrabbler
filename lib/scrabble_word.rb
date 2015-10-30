class ScrabbleWord
  attr_accessor :score_obj, :word
  @@score_hash = {"a" => 1, "b" => 3, "c" => 3, "d" => 2, "e" => 1, "f" => 4, "g" => 2, "h" => 4, "i" => 1, "j" => 8, "k" => 5, "l" => 1, "m" => 3, "n" => 1, "o" => 1, "p" => 3, "q" => 10, "r" => 1, "s" => 1, "t" => 1, "u" => 1, "v" => 4, "w" => 4, "x" => 8, "y" => 4, "z" => 10}
  def initialize(n)
    @word = n
    #return n
  #  n.split("").each do |i|
  #    puts "letter #{i}"
  #    puts "hash value #{@@score_hash[i]}"
  #    @score = @score + @@score_hash[i].to_i
  #  end
  end

  def score
    @score_obj = 0
    @word.split("").each do |i|
        @score_obj += @@score_hash[i.downcase]
      end
    return @score_obj
  end

  def multiplier_score(n)
    return self.score() *  n
  end

end



# word = ScrabbleWord.new("hello")
# puts word.score
