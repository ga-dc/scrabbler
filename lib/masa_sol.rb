ruby class Cipher
  def self.encode(plain_text)
    # Downcase the plain text.
    # Convert the text into a set of ascii code.
    # For each ascii:
    #   Convert ascii into an offset from 'a'
    #   Add cipher key to the offset
    #   Convert the new offset to a char
    # Join all the chars
    plain_text.downcase.each_byte.map do |byte|
      offset = byte - 'a'.ord
      new_offset = (offset + 13) % 26
      new_char = (new_offset + 'a'.ord).chr
    end.join("")
  end
end
