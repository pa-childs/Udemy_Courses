
my_string = "5"
puts "Converting string..."
puts my_string.class
puts my_string
puts

my_integer = my_string.to_i
puts my_integer.class
puts my_integer
puts

my_float = my_string.to_f
puts my_float.class
puts my_float
puts

integer = 10
puts "Converting numbers (ints)"
puts integer.class
puts integer
puts

my_string = integer.to_s
puts my_string.class
puts my_string
puts

my_float = integer.to_f
puts my_float.class
puts my_float
puts

my_float = 3.14
puts "Converting numbers (floats)"
puts my_float.class
puts my_float
puts

my_integer = my_float.to_i
puts my_integer.class
puts my_integer
puts

my_string = my_float.to_s
puts my_string.class
puts my_string
