word = "hello"

# Methods doesn't save change to variable
puts word.capitalize()
puts word
puts

# Bang methods do save change to the variable
puts word.capitalize!
puts word
puts

puts word.upcase!
puts word
puts

puts word.downcase!
puts word
