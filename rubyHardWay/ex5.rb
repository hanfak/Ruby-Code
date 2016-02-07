name = 'Zed A. Shaw'
age = 35 # not a lie in 2009
height = 75 # inches
height_cm = height*2.54
weight = 188 # lbs
weight_kg = weight/2.2
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

puts "Let's talk about #{name}."
puts "He's #{height} inches tall."
puts "He's #{height_cm} cm tall."
puts "He's #{weight} pounds heavy."
puts "He's #{weight_kg} kg heavy."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

# this line is tricky, try to get it exactly right
puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}."

mass_kg = 80
length_cm = 191
length_inches = length_cm*0.393701
mass_pounds = mass_kg*2.2

puts length_inches
puts mass_pounds