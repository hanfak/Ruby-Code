def add_length(str)
  str.split.inject([]) do  |arr, word|
    arr << word + " " + word.length.to_s
  end
end