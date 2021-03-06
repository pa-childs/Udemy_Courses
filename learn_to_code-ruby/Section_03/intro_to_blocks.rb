# Syntax for one line of code
5.times { |count| puts "Loop number #{count + 1} in a block"}
puts

# Syntax for multiple lines of code
3.times do |count|

  puts "In a Do block"
  puts "Looping through block code"
  puts "Loop #{count + 1}"
  puts

end

# Loop that shows first ten multiples of 3
number = 10
number.times { |count| puts 3 * (count + 1)}

# Using Do and End format
# 10.times do |count|
#
#   puts 3 * (count + 1)
#
# end
