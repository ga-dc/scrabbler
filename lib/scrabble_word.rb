

class ScrabbleWord

  letter_bank = {a: 1, b: 3,
                 c: 3, d: 2,
                 e: 1, f: 4,
                 g: 2, h: 4,
                 i: 1, j: 8,
                 k: 5, l: 1,
                 m: 3, n: 1,
                 o: 1, p: 3,
                 q: 10, r: 1,
                 s: 1, t: 1,
                 u: 1, v: 4,
                 w: 4, x: 8,
                 y: 4, z: 10
               }


  def initialize(word)
    @word = word
  end

  def word
    return @word.downcase
  end

  def score(word)
    word_array = @word.split("")
      puts word_array
      puts word_array.inspect
      puts @letter_bank[:word_array[0]].inspect
      letter_number = word_array.map{ [x] @letter_bank[:x]}
      return letter_number.reduce(:+)
  end

  def multiplier_score(multiplier)
  end

end
