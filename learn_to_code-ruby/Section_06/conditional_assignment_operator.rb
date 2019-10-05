value = nil
p value

# Only sets if the value was nil
value ||= 5
puts value

value ||= 10
puts value
puts

# Example of use where it doesn't assign a value
greeting = "Hello"
letter_to_extract = 0
letter = greeting[letter_to_extract]
letter ||= "Not Found"

puts letter

# Example of use where it does assign a value
greeting = "Hello"
letter_to_extract = 10
letter = greeting[letter_to_extract]
letter ||= "Not Found"

puts letter