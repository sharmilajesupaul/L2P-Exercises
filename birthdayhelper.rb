Dir.chdir '/Users/sharmila/Documents'

filename = 'birthdays.txt'

read_text = File.read filename

month = { 'Jan' => 1,
                 'Feb' => 2,
                 'Mar' => 3,
                 'Apr' => 4,
                 'May' => 5,
                 'Jun' => 6,
                 'Jul' => 7,
                 'Aug' => 8,
                 'Sep' => 9,
                 'Oct' => 10,
                 'Nov' => 11,
                 'Dec' => 12
}

birthdates = Hash.new

#each word in the text file is split by new line,
#then it is split by comma, into 2 parts
word = read_text.split(/\n/)
word.each do |line|
  item = line.split(/, /, 2)
  birthdates[item[0]] = item[1]
end


puts "Please enter a name: "
name = gets.chomp


if birthdates[name] != nil

  date = birthdates[name].split

  current_month = Time.now.month
  current_day = Time.now.day
  current_year = Time.now.year
  bday = date[1].split(/,/)
  age = current_year - date[2].to_i

#if the birth month is before the current month, the date is printed using the next upcoming year
#if the person's birthday is during the current month, and the day is before the current day
#the date is printed using the upcoming year
#otherwise the date is printed using the current year
  if month[date[0]] < current_month
    puts "#{name}'s next birthday will be #{age+1} on #{date[0]} #{date[1]} #{current_year+1}"
  elsif bday[0].to_i < current_day && month[date[0]] == current_month
      puts "#{name}'s next birthday will be #{age+1} on #{date[0]} #{date[1]} #{current_year+1}"
  elsif bday[0].to_i == current_day && month[date[0]] == current_month
      puts "#{name} just turned #{age} TODAYYYY! "
  else
    puts "#{name}'s next birthday will be #{age} on #{date[0]} #{date[1]} #{current_year}"
  end

else

  puts "That name doesn't exist in our files."
end