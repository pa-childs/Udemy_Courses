numbers = [1, 2, 3]

p numbers + [4, 5]
p numbers
puts

p numbers.concat([4, 5])
p numbers
puts

def custom_concat(array_1, array_2)

  # Return array 1 with all of the elements from array 2
  # added to the end of it

  array_2.each do |number|

    array_1.push(number)

  end

  return array_1

end

numbers_1 = [1, 2, 3]
numbers_2 = [4, 5, 6]

p custom_concat(numbers_1, numbers_2)
