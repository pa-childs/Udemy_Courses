# Numbers
puts 10 / 4
puts 10.0 / 4
puts 10 / 4.0
puts 10 / 4.to_f
puts

x = 5
y = 10

puts y / x
puts

# puts "5" * "5"  # Can't use strings as numbers
puts "5".to_i * "5".to_i
puts "5" * 2  # Concatinates the string
# puts 2 * "5"  # Can't do the reverse
2.times {print "5"}
puts
puts

puts rand
puts rand(10)

puts "Simple calculator"
25.times { print "-" }
puts
puts "Enter the first number"
number_1 = gets.chomp
puts "Enter the second number"
number_2 = gets.chomp
puts "The first number multiplied by the second number is #{number_1.to_i * number_2.to_i}"
puts "The first number divided by the second number is #{number_1.to_f / number_2.to_f}"
puts "The first number added to the second number is #{number_1.to_i + number_2.to_i}"
puts "The first number subtracted by the second number is #{number_1.to_i - number_2.to_i}"
puts "The modulo value of the first number and second number is #{number_1.to_i % number_2.to_i}"
