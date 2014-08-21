# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +array+ is an array of integers
# largest_integer(array) should return the largest integer in +array+
#
# If +array+ is empty the method should return nil
def largest_integer(array)
	smallest = array.pop 

  array.each do |x|
		if smallest > x 
			smallest = x 
		end
	end
	
	return smallest
end
