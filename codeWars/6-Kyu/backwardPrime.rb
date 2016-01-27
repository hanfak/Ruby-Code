def is_prime? num
  return false if num <= 1
  val = true
  2.upto(num / 2).each do |x|
    if num % x == 0
      return val == false
      break
    end
  end
  val
end

def backwardsPrime(start, stop)
  primes = (start..stop).select {|num| is_prime? num}
  b_primes = []
  primes.each do |prime| 
    if prime>9
      r_prime = prime.to_s.reverse.to_i
      if (is_prime? r_prime) && prime != r_prime
        b_primes << prime
        b_primes << r_prime if primes.include?(r_prime)
      end
    end
  end
  b_primes.sort.uniq
end