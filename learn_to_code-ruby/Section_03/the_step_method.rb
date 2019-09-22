# Used to increment through loops at values higher than 1
puts "Counting by five"

5.step(100, 5) do |current_count|

  puts "Count is at: #{current_count}"

end

# Single line syntax
# 5.step(100, 5) { |current_count| puts "Count is at: #{current_count}"}
