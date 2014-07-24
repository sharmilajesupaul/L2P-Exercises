
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

