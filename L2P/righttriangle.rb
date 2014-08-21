# print_triangle(rows) prints out a right triangle of +rows+ rows consisting 
# of * characters
#
# +rows+ is an integer
#
# For example, print_triangle(4) should print out the following: 
# *
# **
# ***
# ****

def print_triangle(rows)

	counter = 1
	
	while counter <= rows
		puts '*' * counter
		counter +=1
	end
end

print_triangle(10)