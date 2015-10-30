
class ScrabbleWord
  LETTERS = { a: 1, b: 3, c: 3, d: 2, e: 1,
  f: 4, g: 2, h: 4, i: 1, j: 8, k: 5,
  l: 1, m: 3, n: 1, o: 1, p: 3, q: 10,
  r: 1, s: 1, t: 1, u: 1, v: 4, w: 4,
  x: 8, y: 4, z: 10 }

  def initialize (word)
    @word = word
  end

  # def word
  #   @word.downcase
  #   @word.split(//)
  # end

  def score
    # if @word.size == 1
    #   @score = @letters[@word]
    # else
    #   @foo = @values & @word
    #   @sum = 0
    #   @foo.each { |a| sum+=a }
    #   return @sum
    score = 0
    @word.each_char do |f|
      score += LETTERS[f.downcase.to_sym]
    end
    score
  end


  def multiplier_score(n)
    big_score = (score * n)
  end

end
