class ScrabbleWord

  attr_reader :word
##the values of the scrabble tiles.
  tiles = { a: 1, b: 3, c: 3, d: 2, e: 1, f: 4, g: 2, h: 4, i: 1, j: 8, k: 5, l: 1, m: 3, n: 1, o: 1, p: 3, q: 10, r: 1, s: 1, t: 1, u: 1, v: 4, w: 4, x: 8, y: 4, z: 10 }
##setting up word. not sure if downcase goes here or in the score part.
  def initialize(word)
      @word = word.downcase
  end
##scoring the word.
  def score
    score = 0
      @word.each do |letter|
        score = score + tiles[letter.to_sym]
      end
      return score
    end
#scoring the multiplier
    def multiplier_score(multiplier)
      return multiplier * score

    end 

end
