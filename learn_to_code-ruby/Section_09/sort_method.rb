numbers = [5, 8, 4, 7, 2, 10, 3]
animals = ["kangaroo", "camel", "python", "lion", "wolf", "snake", "panda"]

p numbers.sort
p animals.sort

# Method chainging can reverse the sort
p numbers.sort.reverse
p animals.sort.reverse

p numbers
p animals
puts

# Bang methods will modify original array
p numbers.sort!
p animals.sort!

p numbers
p animals
