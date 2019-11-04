# Shows the current time
puts Time.new  # Same as Time.now when no arguments are passed.
puts Time.now
puts

today = Time.now
p today.class
puts

last_february = Time.new(2015, 2, 4, 16, 00, 01)
p last_february
