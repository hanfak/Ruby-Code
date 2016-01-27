
def isPrime(num)
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