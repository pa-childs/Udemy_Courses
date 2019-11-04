array = ["1", "2", "3", "4", "5"]
p array

p array.map { |number| number.to_i}
p array.map(&:to_i)
puts

array = [1, 2, 3, 4, 5, 6]
p array.select { |number| number.even? }
p array.select(&:even?)
