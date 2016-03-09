require "pry"
line = '*'*50
puts line

class ScrabbleWord

  def initialize(word)
  #each word passed needs to be split up into letters
    #letters need to be lowercase to match scores variable's symbols
    @word = word.downcase.split("") #to split into array don't put space between "". (" ") WON'T WORK
    #puts "this is my letter: #{@word}" #check if word prints as seperate letters
  end

  def score
    score = 0
    scores = {  a: 1, b: 3, c: 3, d: 2, e: 1,
                f: 4, g: 2, h: 4, i: 1, j: 8,
                k: 5, l: 1, m: 3, n: 1, o: 1,
                p: 3, q: 10, r: 1, s: 1, t: 1,
                u: 1, v: 4, w: 4, x: 8, y: 4,
                z: 10}
    # each letter needs to be put in a loop to calculate score
    @word.each do |letter|
      # letter needs to be converted into symbol to compare with scores
      symbol_letter = letter.to_sym
      # each letter's score needs to be added to score variable
      score += scores[symbol_letter]
      puts "Letter '#{symbol_letter}' has a score of #{scores[symbol_letter]}"
    end
      puts "My total score is: #{score}"
      return score # now word.score will return score in terminal
  end # end def score

  def multiplier_score
    # Not sure what to do with multiplier_score
    #multiplied_score = score * 2 this ended up multiplying the method score by two, but I only want to multiply the variable score by two.
    #puts "The score multiplied by 2 = #{multiplied_score}"
  end
end #end class

word = ScrabbleWord.new("snowman")
word.score
word.multiplier_score
puts line

binding.pry
