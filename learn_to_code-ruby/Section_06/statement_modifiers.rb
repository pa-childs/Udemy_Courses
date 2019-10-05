number = 5000
verified = true

if number > 2500

  puts "Huge Number"

end

puts

# Inline modifier whie if keyword
puts "Huge Number" if number > 2500
puts

puts "Huge Number" if number > 2500 && verified
puts "Huge Number" if number > 2500 || verified
puts

# Using with unless keyword
puts "Huge Number" unless number < 2500