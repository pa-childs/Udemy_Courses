first_hash = {'a' => 1, 'b' => 2, 'c' => 3}
puts first_hash['a']

second_hash = {a: 1, b: 2, c: 3}
puts second_hash[:b]
puts

puts first_hash.keys
puts

puts first_hash.values
puts

first_hash.each do | key, value |
  puts "Key = #{key} and Value = #{value}"
end
puts

second_hash[:d] = 4
puts second_hash

second_hash.each { |key, value | puts "Key = #{key} and Value = #{value}" }
