puts 'Pick a starting year (like 1973 or something):'
starting = gets.chomp.to_i

puts 'Now pick an ending year:'
ending = gets.chomp.to_i

puts 'Check it out... these years are leap years:'

year = starting

while year <= ending

	if year%4 == 0
	
		puts year if year%100 != 0 || year%400 == 0		
	
	end
	
	year = year + 1
end

