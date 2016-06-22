require "pry"


class ScrabbleWord
  attr_accessor :word, :score
# creates instance of word
  def initialize(word)
    @word = word.downcase
    #wrote the getter then removed since .downcase works better
    @score = 0
  end

#s = score
  def s
    scrabble_values = {a: 1, b: 3, c: 3, d: 2, e: 1,
    f: 4, g: 2, h: 4, i: 1, j: 8,
    k: 5, l: 1, m: 3, n: 1, o: 1,
    p: 3, q: 10, r: 1, s: 1, t: 1,
    u: 1, v: 4, w: 4, x: 8, y: 4,
    z: 10}

    # for each word, split into individual letters
    @word.split(//).each do |letter|
      @score = @score + scrabble_values[letter.to_sym]
    #find value of letter

      #letter value
      # replace with value of letter from array/hash
      puts "score: #{@score}"
    end
      puts "final count #{@score}"
  end


  def multiplier(multiple)
    @score = @score * multiple
      puts @score
  end

  # take letter and find letter in hash. Get value next to? assigned to? hash
  # add value to score for each letter through 'each' loop

end


w = ScrabbleWord.new("Ab")
a = ScrabbleWord.new("Aardvark")

binding.pry
puts "end of file"
