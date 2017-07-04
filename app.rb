def additon number_1, number_2
	number_1 + number_2
end

def subtraction number_1, number_2
	number_1 - number_2
end

def multiplication number_1, number_2
	number_1 * number_2
end

def division number_1, number_2
	number_1 / number_2
end

def power_of number_1, number_2
	number_1 ** number_2
end

def square_root number
	Math.sqrt number
end

def calculate operation, *numbers
	case operation
		when 'a'
			(additon numbers[0], numbers[1]).to_i

		when 's'
			(subtraction numbers[0], numbers[1]).to_i

		when 'm'
			(multiplication numbers[0], numbers[1]).to_i

		when 'd'
			result = division numbers[0], numbers[1]
			if result % 1 == 0
				result.to_i
			else
				result
			end

		when 'p'
			(power_of numbers[0], numbers[1]).to_i

		when 'r'
			result = square_root numbers[0]
			if result % 1 == 0
				result.to_i
			else
				result
			end
	end
end

def get_numbers operation
	puts "Enter the first number:"
	number_1 = gets.chomp.to_f

	if operation != 'r'
		puts "Enter the second number:"
		number_2 = gets.chomp.to_f
		puts calculate operation, number_1, number_2
	else 
		puts calculate operation, number_1
	end
end

def bmi_menu
	puts "(i)mperial or (m)etric system"
	choice = gets.chomp
end

def bmi_calculator system
	
	if system == 'i'
		puts "Enter height in inches:"
		height = gets.chomp.to_f
		puts "Enter weight in pounds:"
		weight = gets.chomp.to_f
		bmi = (weight * 703) / (height ** 2)
	elsif system == 'm'
		puts "Enter height in metres:"
		height = gets.chomp.to_f
		puts "Enter weight in kilograms:"
		weight = gets.chomp.to_f
		bmi = weight/ (height ** 2)
	end
end

def trip_calculator 
	puts "Enter a distance:"
	distance = gets.chomp
	puts "Enter a fuel efficiency (mpg):"
	fuel_efficiency = gets.chomp
	puts "Enter a cost per gallon:"
	cost = gets.chomp
	puts "Enter a speed (mph):"
	speed = gets.chomp
end

puts "Do you want the (b)asic calculator, (a)dvanced calculator, bm(i) calculator or (t)rip calculator?"
which_calc = gets.chomp 

if which_calc == 'b'
	puts "Do you want to do (a)ddition, (s)ubtraction, (m)ultiplication or (d)ivision?"
	operation = gets.chomp
	get_numbers operation
elsif which_calc == 'a'
	puts "Do you want to do (p)ower or square (r)oot?"
	operation = gets.chomp
	get_numbers operation
elsif which_calc == 'i'
	choice = bmi_menu
	result = bmi_calculator choice
	puts "#{'%.01f' % result}"
elsif which_calc == 't'

end




