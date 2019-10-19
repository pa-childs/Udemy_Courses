# Write a loop that gives a sum of the products
# of each index and its value

numbers = [1, 2, 3, 4, 5]
sum = 0

numbers.each_with_index do | number, index |

  product = number * index
  sum += product
  puts "#{number} + #{index} = #{product}"
  puts "New Sum is #{sum}"
  puts

end

puts "Final Sum = #{sum}"
puts

numbers = [-1, 2, 1, 2, 5, 7, 3]

def print_if(array)
# Prints the product of the element and its index
# if the index position is greater than the element

  array.each_with_index do | element, index |

    if index > element

      puts "Index = #{index}"
      puts "Element = #{element}"
      puts "Product  of element and index = #{element * index}"
      puts

    end

  end

end

print_if(numbers)
