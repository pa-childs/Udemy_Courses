# any? will look for any occurance in the array which matchs the
# criteria supplied, and return true or false
numbers = [1, 3, 5, 7, 2]

evens = numbers.any? do |number|

  number.even?

end

p evens

# all? will look in the array to see if all element match  the
# criteria supplied, and return true or false
numbers = [1, 3, 5, 7, 2]

evens = numbers.all? do |number|

  number.even?

end

p evens
