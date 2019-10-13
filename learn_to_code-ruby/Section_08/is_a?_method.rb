puts 1.class()
puts 3.14.class()
puts "a".class()
puts true.class()
puts false.class()
puts nil.class()
puts [1, 2, 3].class()
puts

# Returns if the element is part of the specified class
puts 1.is_a?(Integer)
puts 1.is_a?(Float)
puts "test".is_a?(String)
puts "test".is_a?(Array)
puts 

the_array = [1, 2, 3]

if the_array.is_a?(Array)

  the_array.each { |e| puts e }

end
puts

puts 1.is_a?(Integer)
puts 1.is_a?(Object)
puts 1.is_a?(BasicObject)