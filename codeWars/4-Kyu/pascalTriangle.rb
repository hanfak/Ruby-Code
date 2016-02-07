def factorial x
  (1..x).inject(1) {|total, num| total * num }
end

def comb(n,r)
  factorial(n) / (factorial(n -r) * factorial(r))
end

def line n 
  (0..n).map {|r| comb(n,r) }
end

def pascalsTriangle n
  n-=1
  (0..n).inject([]) {|total, term| total<< line(term)}.flatten
end