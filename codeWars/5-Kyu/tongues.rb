CONSONANTS = ['b' ,'k' ,'x' ,'z', 'n' ,'h' ,'d' ,'c', 'w' ,'g' ,'p', 'v', 'j', 'q' ,'t' ,'s' ,'r' ,'l', 'm', 'f']  
VOWELS = ['a', 'i', 'y', 'e', 'o', 'u']
UPPERVOWELS = ['A','I','Y','E','O','U']

def pick_vowel vowel
  idx = VOWELS.index(vowel.downcase)
  idx >= 3 ? idx = idx % 3 : idx +=3
  VOWELS[idx]
end

def pick_consonant consonant
  idx = CONSONANTS.index(consonant.downcase)
  idx >= 10 ? idx = idx % 10 : idx +=10
  CONSONANTS[idx]
end 

def capitalize_vowel vowel
  vowel == vowel.upcase ? pick_vowel(vowel).upcase : pick_vowel(vowel)
end

def capitalize_consonant consonant
  consonant == consonant.upcase ? pick_consonant(consonant).upcase : pick_consonant(consonant)
end

def change_alphabet letter
  if VOWELS.include?(letter) || UPPERVOWELS.include?(letter) 
    capitalize_vowel letter
  else
    capitalize_consonant letter
  end
end

def tongues(code)
  code.scan(/\w+|\W+/).map do |word|
    changed_word =  word.chars.map do |letter|
      letter =~ /[^a-zA-Z]| / ? letter : change_alphabet(letter)
    end.join
  end.join
end