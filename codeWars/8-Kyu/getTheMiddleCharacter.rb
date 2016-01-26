def get_middle(s)
  length = s.length
  index = length/2
  length % 2 == 1 ? s[index] : s[(index - 1).. index]
end