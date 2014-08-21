puts "What year were you born in? (int values only)"
year = gets.chomp

puts "What month of the year were you born? (enter numbers: 1 - 12)"
month = gets.chomp

puts "What day of the month were you born? (int values only)" 
day = gets.chomp

birthday = Time.new(year, month, day)

age = (Time.new - birthday) / 31556900
puts 'Spank!' * age.to_i


puts birthday