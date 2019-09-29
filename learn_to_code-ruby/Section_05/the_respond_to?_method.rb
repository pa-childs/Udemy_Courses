number = 1000

puts number.respond_to?("next")
puts number.respond_to?("even?")
puts number.respond_to?("length")

puts


if number.respond_to?("next")

  puts number.next()

end

if number.respond_to?("length")

  puts number.length()

end

puts

puts "Hello".respond_to?("length")
puts "Hello".respond_to?(:upcase)
puts "Hello".respond_to?(:even?)
