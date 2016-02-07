
ROMVAL = {"I"=>1, "V" => 5, "X" => 10, "L" =>50, "C" => 100, "D" => 500, "M"=>1000}

def solution(roman)
  num_arr = roman.chars.inject([]) {|s,c| s.push(ROMVAL[c])}
  
  sum = 0

  while !num_arr.empty?
    a = num_arr.max

    if num_arr.first == a
      sum += num_arr[0]
      num_arr.shift
    elsif num_arr[1] == a
      sum += num_arr[1] - num_arr[0]
      num_arr.shift(2)
    end
  end

  sum
end