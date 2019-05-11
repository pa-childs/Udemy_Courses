first_name = "Harry "
last_name = "Potter "

puts first_name + last_name
puts

# The next two methods overwrite the first variable
# concat method
first_name = "Harry "
last_name = "Potter "
puts first_name.concat(last_name)
puts first_name
puts

# shovel operator
first_name = "Harry "
last_name = "Potter "
puts first_name << last_name
puts first_name
puts

# prepend method
first_name = "Harry "
last_name = "Potter "
puts first_name.prepend(last_name)
puts first_name
puts
