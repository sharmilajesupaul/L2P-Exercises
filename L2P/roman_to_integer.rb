def roman_numeral num 

	thous = (num/1000)
	hunds = (num % 1000 / 100)
	tens  = (num % 100 / 10)
	ones  = (num % 10)

	roman = 'M' * thous

	if hunds == 9
		roman = roman + 'CM'
	elsif hunds == 4
		roman = roman + 'CD'
	else
		roman = roman + 'D' * (num % 1000 / 500)
		roman = roman + 'C' * (num % 500 / 100)
	end

	if tens == 9 
		roman = roman + 'XC'
	elsif tens == 4
		roman = roman + 'XL'
	else
		roman = roman + 'L' * (num % 100 / 50)
		roman = roman + 'X' * (num % 50 / 10)
	end

	if ones == 9
		roman = roman + 'IX'
	elsif ones == 4
		roman = roman + 'IV'
	else
		roman = roman + 'V' * (num % 10 / 5)
		roman = roman + 'I' * (num % 5 / 1)
	end

	roman 
end

def roman_to_int string
	#check if string contains roman numerals 
	#if string does not contain roman numerals, return error message 
	string.upcase!

	for i in 0..string.length-1
		#puts string[i]
		if (string[i] != ?M && string[i] != ?D && string[i] != ?C && string[i] != ?L && string[i] != ?X && string[i] != ?V && string[i] != ?I)
			return "Please include roman numerals only!"
		end
	end 
	
	roman_num = Hash.new

	roman_num['M'] = 1000
	roman_num['D'] = 500
	roman_num['C'] = 100
	roman_num['L'] = 50
	roman_num['X'] = 10
	roman_num['V'] = 5
	roman_num['I'] = 1

	int = 0
	i = 0

	#if string contains RN - convert RN to integers
	begin
		first = roman_num[string[i]].to_i
		
		if i != string.length-1
		
		second = roman_num[string[i+1]].to_i

			if first < second
				int += second - first
				i+=1

			else 
				int += first
			
			end
		
		else
			int += first
		end

		i +=1	
	end while (i < string.length)
		

	#returns integer
	return int	
end

puts (roman_numeral(954))
puts (roman_to_int('CMLIV'))
puts
puts (roman_numeral(19))
puts (roman_to_int('XIX'))
puts
puts (roman_to_int('MLV'))
puts (roman_to_int('MEOW'))
puts

