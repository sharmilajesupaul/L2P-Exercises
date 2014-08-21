def leap_year?(year)
	if year%4 == 0 
		
		if year%100 == 0 && year%400 != 0 
			return false 
		end  
	
		return true 
	
	else
		return false
	end
end

puts leap_year?(2001)
puts leap_year?(4)
puts leap_year?(400)
puts leap_year?(100)
puts leap_year?(3)