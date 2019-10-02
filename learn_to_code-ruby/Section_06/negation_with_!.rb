user = "free"

if user != "subscriber"

  puts "Only suscribers are allowed!"
  puts

end

puts true
puts !true
puts

puts false
puts !false
puts

# The ! forces the string, int, etc into a boolean which can then be negated
puts 1
puts !1
puts
puts ""
puts !""
puts

# The negation can be negated
puts 3.14
puts !3.14
puts !!3.14
puts

# The boolean false and nil will negate to be true
puts !false
puts !nil