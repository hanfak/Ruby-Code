def solution(n)
  (1...n).select {|x| x%3==0 || x%5==0}.inject(:+)
end