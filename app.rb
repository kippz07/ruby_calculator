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



p "Do you want the (b)asic or (a)dvanced calculator?"
which_calc = gets.chomp 

if which_calc == 'b'
	p "Do you want to do (a)ddition, (s)ubtraction, (m)ultiplication or (d)ivision?"
	operation = gets.chomp
elsif which_calc == 'a'
	p "Do you want to do (p)ower or square (r)oot?"
	operation = gets.chomp
end

p "Enter the first number:"
number_1 = gets.chomp.to_f

if operation != 'r'
	p "Enter the second number:"
	number_2 = gets.chomp.to_f
	puts calculate operation, number_1, number_2
else 
	puts calculate operation, number_1
end



# puts "Calc: #{which_calc}, num1: #{number_1}, num2: #{number_2}, operation: #{operation}"

