def nth_fibonacci(n) 
  a, b = 0, 1
  return a if n==1
  return b if n==2
  (2..n).each do |x|
    c = a + b
    a = b
    b = c
  end
  a
end