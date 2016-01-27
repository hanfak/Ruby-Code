def anagrams(word, words)
  words.select {|z| word.chars.sort == z.chars.sort}
end