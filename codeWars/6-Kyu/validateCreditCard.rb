def validate(n)
  arr = n.to_s.split("").map(&:to_i)
  new_arr =[]
  if arr.length.even?
    arr.each_with_index do |x,i| 
      i.even? ? new_arr << x*2 : new_arr << x
    end
  else
    arr.each_with_index do |x,i| 
        i.odd? ? new_arr << x*2 : new_arr << x
    end
  end
  new_arr.collect! {|x| x >= 10 ? x -9 : x}
  new_arr.inject(:+) % 10 == 0
end