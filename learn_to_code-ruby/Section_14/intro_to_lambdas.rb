# Procs and lambdas are similar
array = [1, 2, 3, 4]
squares_proc = Proc.new { |number| number ** 2 }

p array.map(&squares_proc)
p squares_proc.call(5)
puts

squares_lambda = lambda { |number| number ** 2 }

p array.map(&squares_lambda)
p squares_lambda.call(5)
puts

# Procs will return nil for any arguements that are left out.
some_proc = Proc.new { |name, age| "Your name is #{name} and your age is #{age}." }
p some_proc.call("Penny", 4)
p some_proc.call("Penny")
puts

# Lambdas will return error if they don't get the expected arguement
some_lambda = lambda { |name, age| "Your name is #{name} and your age is #{age}." }
p some_lambda.call("Penny", 4)
# p some_lambda.call("Penny")
puts

# Proc returns and doesn't return to the method that called it
def go_on_trip

  status = Proc.new { return "The car broke down"}
  status.call
  "The trip is fun"

end

how_was_trip = go_on_trip
p how_was_trip
puts

# Lambda returns back to the method that called it
def go_on_trip

  status = lambda { return "The car broke down"}
  status.call
  "The trip is fun"

end

how_was_trip = go_on_trip
p how_was_trip
