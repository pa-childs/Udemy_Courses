integer = 1

while integer <= 10

  puts "Counting to #{integer}"

  integer += 1

end

puts

status = true

while status

  puts "Please enter username"
  username = gets().chomp().downcase()
  puts

  puts "Please enter password"
  password = gets().chomp().downcase()
  puts

  if username == "paul" && password == "my_password"

    puts "Access Authorized"
    puts

    status = false
  
  elsif username == "quit" || password == "quit"

    puts "Have a nice day"
    puts

    status = false

  else  

    puts "Access Denied"
    puts
    
  end

end