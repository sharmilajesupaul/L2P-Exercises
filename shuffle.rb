words = ['hi', 'there', 'are', 'you', 'a', 'cat', '?']

def shuffle array
	return shuf(array, [])
end

def shuf arr, rand_arr
	#return arr.shuffle
	return rand_arr if arr.length == 0

	new_arr = []
	index = 0
	random_index = rand(arr.length)

	arr.each do |x| 

		if random_index == index	
			rand_arr.push(x)
		else 
			new_arr.push(x)
		end
		
		index += 1
	end
	
	shuf new_arr, rand_arr
end

puts(shuffle(words))