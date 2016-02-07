def solution(nums)
  nums.uniq!
  actual = nums.first
  x = nums.slice_before do |e|
    expected, actual = actual.next, e
    expected != actual
  end.to_a
  sarr = x&x
  arr = []
  sarr.each do |z|
    if  z.length <= 2
      arr << z.join(",").to_s
    else 
      arr << "#{z.min}-#{z.max}"
    end
  end
  arr.join(",")
end