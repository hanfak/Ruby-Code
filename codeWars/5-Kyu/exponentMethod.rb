def power(base, exponent)
  return nil if exponent < 0
  arr =  Array.new(exponent, base)
  arr.inject(1) do |product, num|
    product * num
  end
end