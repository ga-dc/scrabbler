class ScrabbleWord

  def initialize(word)
    @word = word
  end

  def word
    @word.downcase
  end

  def multiplier_score(multiplier)
    letter_scores = {  a : 1, b : 3, c : 3, d : 2, e : 1,
       f : 4, g : 2, h : 4, i : 1, j : 8,
       k : 5, l : 1, m : 3, n : 1, o : 1,
       p : 3, q : 10, r : 1, s : 1, t : 1,
       u : 1, v : 4, w : 4, x : 8, y : 4,
       z : 10 }
       scores.each_key{ |key| if key = }
      # if
      @word.split "" #["w", "o", "r", "d"]
      for i in word

        #any? [{ |(key, value)| block }] → true or false

        # h = { "a" => 100, "b" => 200 }
        # h.each {|key, value| puts "#{key} is #{value}" }




    @score
  end

  def score
    @score
  end

end

word = ScrabbleWord.new ("word")
