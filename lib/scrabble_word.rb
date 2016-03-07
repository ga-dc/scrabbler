
class ScrabbleWord

  attr_accessor :word

  def initialize word
    @word = word
    @letter_values = { 'a' => 1, 'b' => 3, 'c' => 3, 'd' => 2, 'e' => 1,
  'f' => 4, 'g' => 2, 'h' => 4, 'i' => 1, 'j' => 8,
  'k' => 5, 'l' => 1, 'm' => 3, 'n' => 1, 'o' => 1,
  'p' => 3, 'q' => 10, 'r' => 1, 's' => 1, 't' => 1,
  'u' => 1, 'v' => 4, 'w' => 4, 'x' => 8, 'y' => 4,
  'z' => 10 }
  end

  def convert_to_lower
      @word.downcase!
      puts @word
  end

  def word_score
      score = 0
      @word.split("").each do |x|
          score = score + @letter_values[x]
          puts score
      end
  end

  def score_multiplier score_multiplier
    score = score * score_multiplier
  end


end

jungle = ScrabbleWord.new "Jungle"
jungle.convert_to_lower
jungle.word_score





