numbers = [3, 5, 7]

numbers.each { |number| puts number }

puts

# For loops are less used in ruby because variable isn't cleaned up
for number in numbers

  puts number

end

puts number
puts

range = 1..10

for range_number in range

  puts range_number

end
