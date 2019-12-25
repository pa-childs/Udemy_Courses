# Get a string input from a user
puts "What is your first_name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Your name is #{first_name} #{last_name}."

# Get a number input from a user
puts "Enter a number to multiply by 2."
number = gets.chomp
puts number.to_i * 2
