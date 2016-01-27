def has_two_cube_sums(n)
  #List out possible cubes for one addenum
  counter = 0
  a = ( n**(1/3.0)).to_i
  b_cubed = (1..a).inject([]) {|list, x| list<<(n-x**3)}
  
  #check which cube has integer cube root
  b_cubed.each do |x|
    (1..a).each do |z|
      sq = x/z
      counter +=1 if (sq/z == z && sq % z == 0 && x % z == 0)
    end
  end

  counter/2 ==2 
end