capitals = {Alabama: "Montgomery", Alaska: "Juneau",
            Arizona: "Phoenix", Arkansas: "Little Rock"}

capitals.each do |key, value|

  puts "The capital of #{key} is #{value}"

end

puts

# if only one parameter is provided it will store a array of the key value pair
capitals.each do |pair|

  puts
  puts "The hash key value pair is #{pair}"
  puts "The capital of #{pair[0]} is #{pair[1]}"

end
