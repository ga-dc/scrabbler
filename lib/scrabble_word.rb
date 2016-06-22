# require("pry")



class ScrabbleWord
    @@alphabet = {
        'a': 1,
        'b': 3,
        'c': 3,
        'd': 2,
        'e': 1,
        'f': 4,
        'g': 2,
        'h': 4,
        'i': 1,
        'j': 8,
        'k': 5,
        'l': 1,
        'm': 3,
        'n': 1,
        'o': 1,
        'p': 3,
        'q': 10,
        'r': 1,
        's': 1,
        't': 1,
        'u': 1,
        'v': 4,
        'w': 4,
        'x': 8,
        'y': 4,
        'z': 10
    }
    def initialize word
        @word = word.downcase
    end
    def word
        @word
    end
    def score
        sum = 0
        @word.split("").each do |ltr|
            letter = @@alphabet[ltr.to_sym]
            puts "#{ltr} = #{letter} points"
            sum += letter
            sleep 0.2
        end
        puts "Total Score: #{sum} points."
        return sum
    end
    def multiplier_score multi
        multi_score = self.score * multi
        puts "With multiplier: #{multi_score} points!"
        return multi_score
    end
end

# binding.pry

# puts "end of program"
