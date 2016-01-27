def spinWords(string)
  string.split(" ").collect do |x|
    x.length > 4 ? x.reverse :  x
  end.join(" ")
end