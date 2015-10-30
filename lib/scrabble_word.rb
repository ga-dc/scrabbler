class ScrabbleWord
  def initialize(word)
    @word = word.downcase
	end

  lettervalues = {
  a: 1, b: 3, c: 3, d: 2, e: 1,
  f: 4, g: 2, h: 4, i: 1, j: 8,
  k: 5, l: 1, m: 3, n: 1, o: 1,
  p: 3, q: 10, r: 1, s: 1, t: 1,
  u: 1, v: 4, w: 4, x: 8, y: 4,
  z: 10
  }

  def score
    score =
  end
end

# # initialize word as a variable
# # take the word in play
# # make it downcase
# # store it in the instance variable
# # store letter values in a hash
# # def score
# parse the word for its letters
# obtain values from hash for each letter in word
# add them together for the word score
# identify words meriting multiplication of their score values
# muliply those word scores by 2 or 3 depending
