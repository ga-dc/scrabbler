class ScrabbleScores
    MAP = {
        a: 1, b: 3, c: 3, d: 2, e: 1,
        f: 4, g: 2, h: 4, i: 1, j: 8,
        k: 5, l: 1, m: 3, n: 1, o: 1,
        p: 3, q: 10, r: 1, s: 1, t: 1,
        u: 1, v: 4, w: 4, x: 8, y: 4,
        z: 10
    }
end

class ScrabbleWord
    attr_reader :score

    def initialize word
        @word = word
        # Homework spec said to define a method, but figured it would be best to
        # only calculate the score on initialization and add an attr_reader
        # for getter access
        @score = self.word.split("").map do |c|
            ScrabbleScores::MAP[c.to_sym]
        end.reduce(:+)
    end

    def word
        @word.downcase
    end

    def multiplier_score  multiplier
        score * multiplier
    end
end
