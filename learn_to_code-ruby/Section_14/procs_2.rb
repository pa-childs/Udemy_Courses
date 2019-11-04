def greeter

  puts "Inside the greeter message"
  yield

end

phrase = Proc.new do

  puts "Inside the proc"

end

# Proc can be passed in as argument even when no arguments defined
greeter(&phrase)
puts

# Proc can be called by itself
phrase = Proc.new { puts "Proc String"}

5.times(&phrase)
puts
phrase.call
