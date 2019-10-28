# splat arguement allows you to pass any number of arguements as an array
def sum(*numbers)

  sum = 0
  numbers.each { |number| sum += number }
  return sum

end

p sum(3, 5, 2, 6)
p sum(3, 1, 2)
p sum(1, 1, 1, 1, 1, 1, 1, 1)
p sum()
