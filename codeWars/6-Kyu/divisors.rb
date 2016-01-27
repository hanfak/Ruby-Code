def divisors(num)
  list = []
  2.upto(num / 2).each { |x| list << x if num % x == 0 }
  list.empty? ? "#{num} is prime" : list
end