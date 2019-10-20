stock_prices = [10.5, 14.39, 49.34, 39.99, 24.8]

p stock_prices.min
p stock_prices.max
puts

fruits = ["Kiwi", "Orange", "Grapes", "Apple"]
p fruits.min
p fruits.max
puts

test_array = [3, 6, 8, 2, 1, 4, 9, 7, 5]
p test_array

def custom_max(array)

  array.sort!.reverse!

  max = array[0]
  return max

end

p custom_max(test_array)

def custom_min(array)

  array.sort!

  min = array[0]
  return min

end

p custom_min(test_array)
