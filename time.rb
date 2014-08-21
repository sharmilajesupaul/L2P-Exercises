time = Time.new # The moment we ran this code. 
time2 = time + 60 # One minute later.

puts time
puts time2

puts Time.local(2000, 1, 1) # Y2K.

puts Time.local(1976, 8, 3, 13, 31) # When I was born.

puts Time.gm(1955, 11, 5)