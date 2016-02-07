def snail(a)
  a.empty? ? [] : a.shift + snail(a.transpose.reverse)
end