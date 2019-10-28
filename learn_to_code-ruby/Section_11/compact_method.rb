# compact method removes all the nil elements that exist in array
numbers = [1, 2, 3]
p numbers.compact

numbers = [1, nil, 2, 3, nil]
p numbers.compact

# there is a bang version of the method to modify the original variable
numbers = [1, nil, 2, 3, nil]
p numbers.compact!
p numbers
