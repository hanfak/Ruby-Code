def join_words array_words
  array_words.collect do |word|
    word.inject("") {|word_eng,letter| word_eng<<letter}
  end.join(" ")
end

def convert_morse_to_letter array_morse_word
  array_morse_word.inject([]) {|word, letter| word<<MORSE_CODE[letter]}
end

def convert_morse_to_word array_morse
  array_morse.inject([]) do |sentence, word| 
    sentence << convert_morse_to_letter(word)
  end
end

def split_morse_by_words morseCode
  morseCode.strip.split("  ").inject([]) {|arr, word| arr <<word.split(" ")}
end

def decodeMorse(morseCode)
  split_morse_words = split_morse_by_words morseCode
  converted_words = convert_morse_to_word split_morse_words
  join_words converted_words
end