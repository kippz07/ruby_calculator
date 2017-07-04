puts "Do you want the (b)asic or (a)dvanced calculator?"
which_calc = gets.chomp 

puts "Enter the first number:"
number_1 = gets.chomp

puts "Enter the second number:"
number_2 = gets.chomp

puts "Do you want to do (a)ddition, (s)ubtraction, (m)ultiplication or (d)ivision?"
operation = gets.chomp

puts "Calc: #{which_calc}, num1: #{number_1}, num2: #{number_2}, operation: #{operation}"