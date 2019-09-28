def my_method

  # Local variable is scoped for use in the method
  expression = "This is from a local variable"
  puts expression

end

expression = "This is from a global variable"

my_method()
puts expression
