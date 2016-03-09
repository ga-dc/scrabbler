require "pry"

class ScrabbleWord

  def initialize(word)
    @word = word
  end

  def score
    score = 0
    scores = {  'a' => 1, 'b': 3, 'c': 3, 'd': 2, 'e': 1,
                'f': 4, 'g': 2, 'h': 4, 'i': 1, 'j': 8,
                'k': 5, 'l': 1, 'm': 3, 'n': 1, 'o': 1,
                'p': 3, 'q': 10, 'r': 1, 's': 1, 't': 1,
                'u': 1, 'v': 4, 'w': 4, 'x': 8, 'y': 4,
                'z': 10}

    splitword = @word.split("")
    # puts splitword
    splitword.each do |letter|
      puts ("w :#{scores['w']}")
      puts (":w :#{scores[:w]}")
      puts "letter: #{letter}"
      puts ("score from letter: #{scores[letter.to_sym]}")
      # puts scores[":#{letter}"].to_i
      score += "#{scores[letter.to_sym]}".to_i
    end

    return score

  end

end

tennis = ScrabbleWord.new("tennis")

binding.pry

puts "ayyyyyy"
