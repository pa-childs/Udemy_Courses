def add(a, b)

  return a + b

end

def subtract(a, b)

  return a - b

end

def multiply(a, b)

  return a * b

end

def calculator(a, b, operation="add")

  if operation == "add"

    add(a, b)

  elsif operation == "subtract"

    subtract(a, b)

  elsif operation == "multiply"

    multiply(a,b)

  else

    return "Invalid operation"

  end

end

puts calculator(20, 10, "subtract")
puts calculator(20, 10, "multiply")
puts calculator(20, 10, "add")
puts calculator(20, 10)
puts calculator(20, 10, "sum up")
