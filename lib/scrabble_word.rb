

class ScrabbleWord

  def initialize word
    @score = 0
    @word = word
    @letter_values = {
      a: 1, b: 3, c: 3, d: 2, e: 1,
      f: 4, g: 2, h: 4, i: 1, j: 8,
      k: 5, l: 1, m: 3, n: 1, o: 1,
      p: 3, q: 10, r: 1, s: 1, t: 1,
      u: 1, v: 4, w: 4, x: 8, y: 4,
      z: 10
    }
  end

  #getter for @word
  def get_word
    @word = @word.downcase
  end

  def score
    #enumerate thru word and check if its chars match keys from letter_values
    #add up the values of the matching keys to get score
      #convert word to an array to loop thr
    word_arr = get_word.split('')
      #for each letter in word_arr,
      for letter in word_arr
      #loop thru letter_values and find a key that matches
        @letter_values.each do |key, value|
        #add matching keys' value to a score instance variable
          if "#{key}" == letter
            @score += value
          end
        end
      end
    return @score
  end

  def multiplier_score(multiplier)
    self.score #get score off the bat
    if multiplier == 2
      @score *= 2
    elsif multiplier == 3
      @score *= 3
    end
  end

end
