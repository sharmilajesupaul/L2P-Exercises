# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +array+ is an array of strings
# longest_string(array) should return the longest string in +array+
#
# If +array+ is empty the method should return nil

def longest_string(array) 

	word = array.pop
	
	array.each do |x|
		if word.length > x.length
			word = x 
		end
	end 

	return word
end