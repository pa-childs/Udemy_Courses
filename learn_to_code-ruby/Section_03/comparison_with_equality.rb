puts 10 == 10
puts 10 == 20
puts

a = 10
b = 5
c = 10

puts a == c
puts a == b
puts

puts "5" == 5
puts 5 == 5
puts "5" == "5"
puts

# Comparing integer to float works
puts 5 == 5.0

# Best to compare same classes though
puts 5 == 5.0.to_i
