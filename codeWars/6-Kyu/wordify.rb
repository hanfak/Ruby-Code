UNITS = {1 => "one", 2 =>"two", 3 => "three", 4 => "four", 5 => "five",
          6 => "six", 7=>"seven", 8=>"eight", 9=> "nine"}

TEENS = {1 => "eleven", 2 => "twelve", 3 =>"thirteen", 4 => "fourteen", 
          5 => "fifteen", 6 => "sixteen", 7 =>"seventeen",
          8 => "eighteen", 9 => "nineteen"}

TENS = {1 => "ten", 2 =>"twenty", 3=>"thirty", 4 =>"forty", 5=>"fifty",
        6 => "sixty",7 =>"seventy",8 =>"eighty", 9=> "ninety"}

POWERS_OF_TEN = { 0 =>"hundred", 1=>"thousand" ,2=>"million", 3 =>"billion"}

def turn_to_hundreds digits_of_3
  word_number = []
  split_number = digits_of_3.chars.reverse.map(&:to_i)
    split_number.each_with_index do |place_value, power_of_ten|

      if power_of_ten == 2 && place_value != 0
        word_number <<"hundred" << UNITS[place_value] #adding and
      end

      if power_of_ten ==1
        word_number << TENS[place_value] #addin << "-" to tens
        if place_value == 1 && (split_number[0] >= 1 && split_number[0] <= 9)
          word_number.shift(2)
          word_number << TEENS[split_number[0]]
        end
      end

      word_number<< UNITS[place_value] if power_of_ten == 0 
    end
  word_number
end

def special_cases number
  return 'Please enter a number that isn\'t negative.' if number < 0
  return 'Zero' if number == 0
end


def wordify(number)
  if special_cases(number) != nil 
    p special_cases(number)
    exit
  end

  number = number.to_s.reverse.chars.each_slice(3).map(&:join).map(&:reverse)
  word_number = []
  
  number.each_with_index do |digits_of_3, powers_of_hundred|
    if powers_of_hundred >0
      word_number << ([POWERS_OF_TEN[powers_of_hundred] +","] << turn_to_hundreds(digits_of_3)).flatten
    else
      word_number << turn_to_hundreds(digits_of_3)
    end
  end
  
  word_number.map(&:reverse).reverse.join(" ").sub(/\s+$/,'').gsub(/\s+/, ' ')
end