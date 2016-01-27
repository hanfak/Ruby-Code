def consonant_count(string)
  string.gsub(/[^A-Za-z]/i, '').scan(/[^aeiouAEIOU]/i).size
end