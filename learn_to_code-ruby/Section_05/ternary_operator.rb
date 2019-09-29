if 1 < 2

  puts "Yes"

else

  puts "No"

end

puts

puts 1 < 2 ? "Yes" : "No"
puts 3 < 2 ? "Yes" : "No"

puts

puts "no" == "yes" ? "Strings are equal" : "Strings are not equal"

puts

def even_or_odd(number)

  return number.even? ? "Number is even" : "Number is odd"

end

puts even_or_odd(4)
puts even_or_odd(7)

puts

pet = "Penny"

puts pet == "Milo" ? "You are my cat" : "You are not my cat"
