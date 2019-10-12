my_array = [1, 3, 5, 7, 9, 13, 15]

# Returns the first or last element
puts my_array.first()
puts my_array.last()
puts

# Returns an array of elements
p my_array.first(3)
p my_array.last(3)

# When arguement added the returned result is an array
p my_array.first(1)
p my_array.last(1)
puts

def custom_first(the_array, number = 0)

  if number == 0

    return the_array[0]

  else

    return the_array[0...number]

  end

end

p custom_first(my_array)
p custom_first(my_array, 3)
p custom_first(my_array, 1)
puts

def custom_last(the_array, number = 0)

  if number == 0

    return the_array[-1]

  else

    return the_array[-number..-1]

  end

end

p custom_last(my_array)
p custom_last(my_array, 3)
p custom_last(my_array, 1)