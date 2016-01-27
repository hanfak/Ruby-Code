def two_oldest_ages(ages)
  
  sorted = ages.sort.reverse
  ([]<< sorted.shift<<sorted.shift).reverse

end