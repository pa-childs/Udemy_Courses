half_alphabet = "a".."m"

puts half_alphabet.include?("d")
puts half_alphabet.include?("p")
puts half_alphabet.include?("A")

half_alphabet = "a"..."z"

puts half_alphabet.include?("z")
puts


numbers = -14..79
puts numbers.include?(-3)
puts numbers.include?(-15)
puts numbers.include?(-80)
puts

# Alternate method to check is included
puts numbers === 10