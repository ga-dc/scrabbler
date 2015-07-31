class ScrabbleWord

  @@letter_values = { "a" => 1, "b" => 3, "c" => 3, "d" => 2, "e" => 1, "f" => 4, "g" => 2, "h" => 4, "i" => 1, "j" => 8, "k" => 5, "l" => 1, "m" => 3, "n" => 1, "o" => 1, "p" => 3, "q" => 10, "r" => 1, "s" => 1, "t" => 1, "u" => 1, "v" => 4, "w" => 4, "x" => 8, "y" => 4, "z" => 10 }

  def initialize(word)
    # puts word
    @word = word
    self.score(@word)
  end

  def score(word)
    @word_value = 0
    word.split("").each do |char|
      next_value = @@letter_values[char]
      # puts next_value.to_s
      @word_value = @word_value + next_value.to_i
    end
    puts "@word_value: " + @word_value.to_s
    return @word_value
  end

  def word
    @word
  end

  def multiplier_score(multiplier)
    puts @word_value
    return (@word_value * multiplier)
  end

end

small_word = ScrabbleWord.new("a")
small_word = ScrabbleWord.new("bottle")
big_word = small_word.multiplier_score(3)
puts big_word
