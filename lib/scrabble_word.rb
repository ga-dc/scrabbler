class ScrabbleWord

  #data table should be available to every instance
  #split the word into its letters
  #for each letter in the word array
    #find the corresponding letter in the data table
    #add the vales to a running score total
  #if there is a multiplier
    #return the score multiplied by the multiplier

  def initialize(word)
    @word = word
    @@letter_values = {
      "a" => 1,
      "b" => 3,
      "c" => 3,
      "d" => 2,
      "e" => 1,
      "f" => 4,
      "g" => 2,
      "h" => 4,
      "i" => 1,
      "j" => 8,
      "k" => 5,
      "l" => 1,
      "m" => 3,
      "n" => 1,
      "o" => 1,
      "p" => 3,
      "q" => 10,
      "r" => 1,
      "s" => 1,
      "t" => 1,
      "u" => 1,
      "v" => 4,
      "w" => 4,
      "x" => 8,
      "y" => 4,
      "z" => 10
    }
    #running total
    @total = 0
  end

  def word
    return @word.downcase
  end

  def score
    #split the word into its letters
    #for each letter in the word array / .each
    word.each_char do |letter|
      #find the corresponding letter in the data table / .each_pair or .fetch
      #add the vales to a running score total
      @total += @@letter_values.fetch(letter)
    end
    return @total
  end

  def multiplier_score(multiplier)
    #if there is a multiplier
      #return the score multiplied by the multiplier
    score * multiplier
  end

end
