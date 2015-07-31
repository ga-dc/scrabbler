class ScrabbleWord
  Scores = {a: 1, b: 3, c: 3, d: 2, e: 1,
            f: 4, g: 2, h: 4, i: 1, j: 8,
            k: 5, l: 1, m: 3, n: 1, o: 1,
            p: 3, q: 10, r: 1, s: 1, t: 1,
            u: 1, v: 4, w: 4, x: 8, y: 4,
            z: 10}

  def initialize (word, player_one, player_two)
    @word = word
    @player_one = player_one
    @player_two = player_two
  end

#getter for word/make word a string/make it lowercase/error says word is undefined
  def word
    @word = word.to_s.downcase
  end

#return scrabble score/each letter gets a value from hash from each key then add it
  def score
    score = 0
    @word.each do |letter|
      @letter(assign value here)
        @letters.each do |letter|
          (letter1 + letter2 = new_score)
        end
    end

    if player_one == player_two
      puts "It is a tie."
    elsif player_one > player_two
      puts "Player 1 wins."
    else player_two > player_one
      puts "Player 2 wins."
    end
    
  end

#return multiplier score
  def multiplier_score (multiplier)
    multiplier_score = 0
  end

end

#player one puts a word down such as dog
#each letter gets a corresponding point from the scores hash
#each letter key needs to grab a value
#each letter point adds to the next letter point
