def pass_control

  puts "This is inside the method"
  yield
  puts "We are back inside the method"

end

pass_control {puts "We are inside the block"}
puts

def who_am_i

  adjective = yield
  puts "My name is #{adjective}"

end

who_am_i { "Paul" }
puts

def multiple_pass

  puts "Inside the method"
  yield
  puts "Back inside the method"
  yield

end

multiple_pass { puts "Inside the block now"}
