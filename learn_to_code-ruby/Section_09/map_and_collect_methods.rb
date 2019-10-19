# Two more methods that do the same damn thing again

numbers = [1, 2, 3, 4, 5]
squares = []

numbers.each { |number| squares << number ** 2 }
p squares

mapped_squares = numbers.map { |numbers| numbers ** 2 }
p mapped_squares

collect_squares = numbers.collect { |numbers| numbers ** 2 }
p collect_squares
puts

temperatures_in_fahrenheit = [105, 73, 40, 18, -2]

temperatures_in_celcius = temperatures_in_fahrenheit.map do | temperature |

  ((temperature -32) * 5.0/9.0).round(2)

end

p temperatures_in_celcius
puts

numbers = [3, 8, 11, 15, 89]

# Write a cubes method that accepts an array
# and returns a new array.  The new array will
# have all the values from the oringinal one cubed.

def cubed_values (array)

  cubed_array = array.map { | number | number ** 3 }
  return cubed_array

end

p cubed_values(numbers)
