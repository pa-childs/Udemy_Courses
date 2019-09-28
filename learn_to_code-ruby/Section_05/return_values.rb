def add_two_numbers(num1, num2)

  # Returns the sum of the two parameters
  return num1 + num2

end

puts add_two_numbers(4, 6)
puts add_two_numbers(10, 5)

def implicitly_return_value(string)

  # Returns value without return syntax
  string

end

puts implicitly_return_value("This is lazy coding")
