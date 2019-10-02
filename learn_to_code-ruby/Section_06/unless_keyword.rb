password = "my_password"

# Useing akward negative condition
if password != "some_password"

  puts "Not Authorized"

else 

  puts "Access Granted"

end

puts

# Uses positive condition
unless password == "some_password"

  puts "Not Authorized"

else 

  puts "Access Granted"

end

puts

# Another use where the negative condition is avoided
unless password.include?("z")

  puts "Password doesn't include the letter"

end