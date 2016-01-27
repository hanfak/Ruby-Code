def palindrome? x
  return true if x.length <=1 
  a,b = x.shift, x.pop
  a == b ? palindrome?(x) : false
end

def palindrome_chain_length(n)
  n = n.to_s
  counter = 0
  while true 
    if palindrome? n.chars
      return counter
      break
    end
   
    n = (n.to_i + n.reverse.to_i).to_s
    counter += 1
  end
end