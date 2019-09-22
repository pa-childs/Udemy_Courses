# gets pauses for input from user
# chomp removes the newline
puts "What is your first name?"
first_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

# For age convert to integer since numbers are integer
# Not needed here, but good practice just in case
puts "What is your age?"
age = gets.chomp.to_i

puts "Your name is #{first_name} #{last_name}."
puts "Your are #{age} years old."
