puts 'Hello there, and what\'s your first name?'
first_name = gets.chomp
first_name = first_name.capitalize

puts 'What is your middle name?'
middle_name = gets.chomp
middle_name = middle_name.capitalize

puts 'what is your last name?'
last_name = gets.chomp
last_name = last_name.capitalize

name = first_name + ' ' + middle_name + ' ' + last_name
length_of_name = first_name.length + middle_name.length + last_name.length

puts 'Pleased to meet you, ' + name + '. :)'
puts "Your name has #{length_of_name} letters"