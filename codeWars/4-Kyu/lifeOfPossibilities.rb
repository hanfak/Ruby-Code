def comb(words)
  words.sort!
  total = []
  (1..words.length).each do |z|
    words.combination(z).inject(total,:<<)
  end
  total.sort
end

def possibilities words
  words.each do |k,v|
    words[k] = comb v
  end
  words
end