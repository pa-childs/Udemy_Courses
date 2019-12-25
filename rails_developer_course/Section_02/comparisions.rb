def add_numbers(number_1, number_2)

  return number_1 + number_2

end

def subtract_numbers(number_1, number_2)

  return number_1 - number_2

end

def multiply_numbers(number_1, number_2)

  return number_1 * number_2

end

puts "Simple calculator"
25.times { print "-" }
puts
puts "Enter the first number"
number_1 = gets.chomp
puts "Enter the second number"
number_2 = gets.chomp
puts "What do you want to do?"
puts "Enter 1 for multiply, 2 for addition, 3 for subtraction"
user_entry = gets.chomp

if user_entry == "1"

  puts "#{number_1} times #{number_2} is #{multiply_numbers(number_1.to_i, number_2.to_i)}"

elsif user_entry == "2"

  puts "#{number_1} plus #{number_2} is #{add_numbers(number_1.to_i, number_2.to_i)}"

elsif user_entry == "3"

  puts "#{number_1} minus #{number_2} is #{subtract_numbers(number_1.to_i, number_2.to_i)}"

else

  puts "Invalid Entry"

end
