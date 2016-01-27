def XO(str)
  arr = str.downcase.split("")
  arr.count("x") == arr.count("o")
end