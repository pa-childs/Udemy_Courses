
p 1 <=> 1   # Returns 0 if equal 
p 1 <=> 2   # Returns -1 if left side is less
p 2 <=> 1   # Returns 1 if left side is more
p 1 <=> "1" # Returns nil if comparison not possible
puts

p [3, 4 ,5] <=> [3, 4 ,5]
p [3, 4 ,5] <=> [3, 4 ,10]
p [3, 4 ,5] <=> [3, 4 ,4]
p [3, 4 ,5] <=> ["3", 4 ,5]