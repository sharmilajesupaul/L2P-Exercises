def valid_triangle?(a, b, c)

  #checks if any sides are equal to 0 and returns false
  if a == 0 || b == 0 || c == 0 
    puts "false, a triangle cannot have side length 0"
    return false
 
  elsif a+b < c || b+c < a || a+c < b 
    puts "false, triangle does not exist"
    return false
    
  #checks for right angle triangle using the pythogorean theoram
  elsif a**2 + b**2 == c**2 
    puts "true, a right angle triangle"
    return true 
  
  #checks for equilateral triangle 
  elsif a == b && b == c
    puts "true, an equilateral triangle"
    return true
  
  #checks for an isoceles triangle
  elsif a == b || a == c || b == c 
    puts "true, an isoceles triangle"
    return true

  #checks for valid triangle side lengths  
  else
    puts "true, a triangle"
    return true
  end
end

valid_triangle?(4,3,5)
puts 
valid_triangle?(0,0,0)
puts
valid_triangle?(1,1,1)
puts
valid_triangle?(1,2,300)
puts 
valid_triangle?(5,5,9)
puts 
valid_triangle?(1,1,2.01)
puts
valid_triangle?(50,70,200)
puts

