# Range with two dots includes the whole range
# (1, 2, 3, 4, 5)
numbers = 1..5

puts numbers
puts numbers.class()
puts

# Range with three dots doesn't include the last range number
# (1, 2, 3, 4)
numbers = 1...5

puts numbers
puts numbers.class()
puts

# Methods should be used with argurments
numbers = 1...150
p numbers.first(4)
p numbers.last(1)
puts

# Need to put range in variable or parenthsis before using
p (1..10).first(3)