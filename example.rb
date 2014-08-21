
#simple ruby for loop
#for i in 1..100
#  if i % 25 == 0
#    puts "Hello, world!"
#  end
#end

puts
#okay, now let me try to manipulate i :
#in this block of code, I will add i+=1
#with the intention to increment my counter by 1 each time I loop
double_index = 0
for i in 0..10
  if i % 2 == 0
      puts  "index is at: #{i}"

      #this should advance i by 1 so the loop should iterate on 1 an
      double_index = i + 1
  end
  puts double_index
end
