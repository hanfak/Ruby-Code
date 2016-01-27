def factors(x)
  x.class == Fixnum &&  x > 0 ? x.downto(1).select {|n| x % n == 0} : -1
end


