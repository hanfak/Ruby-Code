def digital_root(n)
  while n.to_s.length >1
    arr = n.to_s.split("")
    n = arr.inject(0) {|sum,x| sum + x.to_i}
 end
 n 
end