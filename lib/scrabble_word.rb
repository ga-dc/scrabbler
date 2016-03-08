class ScrabbleWord

  def initialize(word)
    @word = word
    @my_score = 0
  end

  def multiplier(mult)
   multiplied_score = @my_score * mult
   puts multiplied_score
  end

  def score
      scorezilla = 0
        assets = {'a' => 1, 'b' => 3, 'c' => 3, 'd' => 2, 'e' => 1,
        'f' => 4, 'g' => 2, 'h' => 4, 'i' => 1, 'j' => 8,
        'k' => 5, 'l' => 1, 'm' => 3, 'n' => 1, 'o' => 1,
        'p' => 3, 'q' => 10, 'r' => 1, 's' => 1, 't' => 1,
        'u' => 1, 'v' => 4, 'w' => 4, 'x' => 8, 'y' => 4,
        'z' => 10}

    @word.downcase.split('').each do |letter|
      if assets[letter]
        scorezilla += assets[letter]
      end
    end
    @my_score = scorezilla
  end
end



idiot = ScrabbleWord.new('IDIOT')


idiot.score
idiot.multiplier(3)
