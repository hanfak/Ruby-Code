def squareSum(numbers)
  numbers.inject(0) {|sum,num| sum + num**2}
end
