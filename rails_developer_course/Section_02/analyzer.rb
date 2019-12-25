puts "Enter your first_name?"
first_name = gets.chomp
puts "Enter your last name?"
last_name = gets.chomp
count = first_name.length + last_name.length

puts "Your full name is #{first_name} #{last_name}."
puts "Your full name reversed is #{last_name.reverse} #{first_name.reverse}."
puts "Your name has #{count} characters in it."
