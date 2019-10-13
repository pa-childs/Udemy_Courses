candies = ["skittles", "snickers", "m&ms"]

candies.each do |candy|

  puts "Are there any #{candy} left?"

end
puts

names = ["Kellie", "Lucas", "Emma"]

names.each { |name| puts name.upcase() }
puts

numbers = [1, 2, 3, 4, 5]

numbers.each do |number|

  square = number * number
  puts "The square of #{number} is #{square}"

end
puts