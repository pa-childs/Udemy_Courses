# Use of string interpolation using #{}
name = "Paul"
puts name
puts "Hello #{name}, how are you?"

# Turn number to string with to_s method
age = 50
puts age.to_s
puts "I am " +  age.to_s + " years old."
puts "I am #{age} years old."

# Calculations can be performed in string interpolation
puts "Next year I will be #{age + 1}."
puts

x = 5
y = 8

puts "x = #{x}"
puts "y = #{y}"
puts "The sum of x and y is #{x + y}."
