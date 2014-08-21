#This program instructs the user to insert one word on each line until the enter key is used two consecutive times.
#Then the words are sorted and displayed in the terminal. 
puts "Please enter one word on each line:"
words = []

while true
	word = gets.chomp

	if words.last == ""
		break
	end	

	words << word
end

puts  "Here they are sorted:"
puts words.sort

puts "Your wordcount is #{words.length-1}"

