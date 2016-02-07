def count_divisors
  divisor_hash = Hash.new(0)
  (1..1000).each do |num| 
    (1..25).each do |factor|
      divisor_hash[factor] += 1 if num % factor == 0
    end
  end
  divisor_hash
end