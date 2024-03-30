def caesar_cipher(text, shift)
    # Define the alphabet in an array (position = number)
    alphabet_lower = ('a'..'z').to_a 
    alphabet_upper = ('A'..'Z').to_a
    
    # transform the text in an array
    letters_array = text.split("")

    #Change the letter to create the cipher
    letters_array.each_with_index do |letter, indexation|
        # for each letter in the array, verify if it's small or caps
        # for each letter in the array, find the letter in the alphabet - shift, take that new letter and replace the old one by it in the text array
        if letter == letter.upcase
            alphabet_upper.each_with_index do |letter_alphabet, index|
                if letter == letter_alphabet
                    shifted_index = (alphabet_upper.index(letter) - shift) % 26
                    letters_array[indexation] = alphabet_upper[shifted_index]
                end
            end
        else
            alphabet_lower.each_with_index do |letter_alphabet, index|
                if letter == letter_alphabet
                    shifted_index = (alphabet_lower.index(letter) - shift) % 26
                    letters_array[indexation] = alphabet_lower[shifted_index]
                end
            end
        end
    end
    modified_text = letters_array.join("")
    puts modified_text
end