phrase = "This is a string."

puts phrase.start_with?("This")
puts phrase.start_with?("that")
puts

puts phrase.end_with?("string.")
puts phrase.end_with?("String.")
puts

puts phrase.downcase.start_with?("this")
