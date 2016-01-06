# Define a class named ScrabbleWord with an initialize method that
# takes one argument,word, and stores it in an instance variable @word.
class ScrabbleWord
  attr_accessor :word

  def initialize word
    @word = word
    @score_keep = 0
    @word_values = { "a" => 1, "b" => 3, "c" => 3, "d" => 2, "e" => 1, "f" => 4, "g" => 2, "h" => 4, "i" => 1, "j" => 8, "k" => 5, "l" => 1, "m" => 3, "n" => 1, "o" => 1, "p" => 3, "q" => 10, "r" => 1, "s" => 1, "t" => 1, "u" => 1, "v" => 4, "w" => 4, "x" => 8, "y" => 4, "z" => 10 }

  end

  def score
    down_word = @word.downcase
    @ary_word = down_word.split('')
    # @ary_word.each { |letter| @score_keep += @word_values[letter]}
    @ary_word.each do |letter|
      @score_keep += @word_values[letter]
    end
    return @score_keep
  end

  def multiplier_score(factor)
    down_word = @word.downcase
    @ary_word = down_word.split('')
    # @ary_word.each { |letter| @score_keep += @word_values[letter]}
    @ary_word.each do |letter|
      @score_keep += @word_values[letter]
    end
    @multiplied = @score_keep * factor
    return @multiplied
  end

end

  # Write a "getter" for this instance variable @word
  # that returns the word as a lowercase string.
  # def word_down word
  #   @word.downcase = word
  # end

  # Define a method .score that returns the scrabble score of the word.

# debugging
# word = ScrabbleWord.new("snowflake")
# puts word.score
# puts word.multiplier_score(3)
# puts "multiplied = #{@multiplied}"
