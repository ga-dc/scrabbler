class ScrabbleWord

  attr_reader :word

  def initialize word
    @word = word.downcase
  end

# Calculate score.

  def score
    score = 0
    score += @word.count( 'aeioulnrst' ) * 1
    score += @word.count( 'dg' ) * 2
    score += @word.count( 'bcmp' ) * 3
    score += @word.count( 'fhvwy' ) * 4
    score += @word.count( 'k' ) * 5
    score += @word.count( 'jx' ) * 8
    score += @word.count( 'qz' ) * 10
    score
  end

  def multiplier_score multiplier
    score * multiplier
  end

end
