class Cipher

    def initialize word
        @plain = []
        @cipher = []
        @word = word
        ("a".."z").each do |letter|
            @plain << letter
        end
        ("n".."z").each do |letter|
            @cipher << letter
        end
        ("a".."m").each_with_index do |letter|
            @cipher << letter
        end
    end

    def encrypt
        @word.split("").each do |letter|
            encrypt_var = @plain.index(letter)
            puts @cipher[encrypt_var]
        end
    end
end
