def stringy(n)
  n.odd? ? ("10" * ( (n+1)/2) )[0..-2] : "10" * (n/2)    
end