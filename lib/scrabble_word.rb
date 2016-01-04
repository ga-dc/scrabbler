class ScrabbleWord
  attr_reader :word
  def initialize word
    @word = word.downcase
    @score = 0
  end

  def score
    wordArr = word.split('')
    wordArr.each do |x|
      case x
        when 'a', 'e', 'i', 'l', 'n', 'o', 'r', 's', 't', 'u'
          @score+=1
        when 'd', 'g'
          @score+=2
        when 'b', 'c', 'm', 'p'
          @score+=3
        when 'f', 'h', 'v', 'w', 'y'
          @score+=4
        when 'k'
          @score+=5
        when 'j', 'x'
          @score+=8
        when 'q', 'z'
          @score+=10
      end
    end
    @score
  end

  def multiplier_score multiplier
    self.score.to_i * multiplier.to_i
  end

end
