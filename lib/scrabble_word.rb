# require "pry"

class ScrabbleWord
  attr_accessor :scoring

  def initialize (word)

    # return the word but lowercase
    @word = word.downcase

    # acccessing score throughout the document
    @scoring = []
  end

  #return the scrabble score of whatever word
  def score

    # we can make an array
    alphabet = {:a=> 1, :b=> 3, :c =>3, :d =>2, :e=> 1,
      :f=> 4, :g =>2, :h=> 4, :i =>1, :j =>8,
      :k =>5, :l =>1, :m=> 3, :n =>1, :o =>1,
      :p=> 3, :q =>10, :r=> 1, :s=> 1, :t=> 1,
      :u=> 1, :v =>4, :w =>4, :x=> 8, :y =>4,
      :z=> 10}
      @word.each_char do |char|
        alphabet.each do |alph_letter, num_val|

          #need to know when the letters equal each other
          #alphabet.each_key to get the symbol and to_s to convert that symbol to a string to be compared to the char

          if char == alph_letter.to_s
            puts "#{char} equals #{num_val}"
            @scoring << num_val
          end
        end
      end

      # displaying/returning the new @scoring
      puts  "The score is #{self.scoring = @scoring.inject(0, :+)}"
      return @scoring
  end

    # return a multipled value of the score (like double or triple word scores)
    def multiplier_score (multiplier)

      # displaying/returning the multipled @scoring
      puts "The score multipled by #{multiplier} is #{self.scoring = @scoring*multiplier}"
      return  @scoring
    end
end
  # narwhol = ScrabbleWord.new("Narwhol")
  # narwhol.score
  # narwhol.multiplier_score(2)
  # narwhol.multiplier_score(3)
  #
  # binding.pry
  # puts "yo mama"
