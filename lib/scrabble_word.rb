require 'pry'

class ScrabbleWord
  def initialize word
    @word = word
    # sets hash of score values
    @letter_value = {a:1,b:3,c:3,d:2,e:1,
      f:4,g:2,h:4,i:1,j:8,
      k:5,l:1,m:3,n:1,o:1,
      p:3,q:10,r:1,s:1,t:1,
      u:1,v:4,w:4,x:8,y:4,
      z:10}
      @matches = []
    end

    #GETTERS
    def word
      @word.downcase
    end

    def letter_value
      @letter_value
    end

    # splits given word into an array of each letter
    def letter_array
      @word.chars.to_a
    end

    
    def score
      @matches = []
      letter_array = word.chars.to_a
      letter_array.each do |letter|
        @matches << @letter_value[letter.to_sym]
      end
      score = 0
      @matches.each { |match| score+=match }
      return score
    end

    def multiplier_score number
      return score * number
    end

    end

    binding.pry

    puts "program complete"
