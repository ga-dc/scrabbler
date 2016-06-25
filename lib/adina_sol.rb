class Cipher
  attr_accessor :word

  def self.encode(word)
    @word = word
    alphabet = {
      a: 'n', b: 'o', c: 'p', d: 'q', e: 'r', f: 's',
      g: 't', h: 'u', i: 'v', j: 'w', k: 'x', l: 'y',
      m: 'z', n: 'a', o: 'b', p: 'c', r: 'e', s: 'f',
      t: 'g', u: 'h', v: 'i', w: 'j', x: 'k', y: 'l', z: 'm'
    }
    new_word = ""
    @word.split("").each do |letter|
      new_word += alphabet[letter.to_sym]
    end
    return new_word
  end

end
