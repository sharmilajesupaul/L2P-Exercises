words = ['Cat', 'dog', 'Mrow', 'moo', 'ant', 'merr', 'aaaa', 'mlohhygj', 'abcd', 'fuck', 'cunt', 'dick', 'pussy']

def sort some_array # This "wraps" recursive unsorted	
	recursive some_array, []
end

def recursive unsorted, sorted
	return sorted if unsorted.length <= 0

	smallest = unsorted.last
	still_unsorted = []

	unsorted.each do |word|	
		if word.downcase < smallest.downcase
			still_unsorted.push smallest
			smallest = word
		else
			still_unsorted.push word
		end
	end

	sorted << smallest

	still_unsorted.delete(smallest)

	recursive still_unsorted, sorted
end

puts(sort(words))

