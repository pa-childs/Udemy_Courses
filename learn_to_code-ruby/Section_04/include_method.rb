name = "Milo"

# Determine if a set of characters are in a string
puts name.include?("M")
puts name.include?("m")
puts

# Normalize the string to avoid case problems
puts name.downcase().include?("m")
puts name.upcase().include?("O")
puts

phrase = "The rain in Spain..."
puts phrase.include?("rain")
