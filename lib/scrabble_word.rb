class ScrabbleWord
  def initialize(word)
    @word = word
    @points = {"a" => 1, "b" => 3, "c" => 3, "d" => 2, "e" => 1, "f" => 4, "g" => 2, "h" => 4, "i" => 1, "j" =>8, "k" => 5, "l" => 1, "m" => 3, "n" => 1, "o" => 1, "p" => 3, "q" => 10, "r" => 1, "s" => 1, "t" => 1, "u" => 1, "v" => 4, "w" => 4, "x" => 8, "y" => 4, "z" => 10 }
    @word_score=[]
    @sum = 0
  end

  def word
    @word.downcase
  end

  def score
    @sum = 0
    @word_score << @word
      i=0
      @word_score = @word.split("")
      while i < @word_score.length do
        @sum = @sum + @points[@word_score[i].downcase]
        i+=1
      end
    @sum
  end

  def multiplier_score(multiplier)
    @sum = 0
    @word_score << @word
    if @word.length == 1
      @sum = @points[@word_score[0]] * multiplier
    else
      i=0
      @word_score = @word.split("")
      while i < @word_score.length do
        @sum = @sum + (@points[@word_score[i].downcase] * multiplier)
        i+=1
      end
    end
    @sum
  end


end
