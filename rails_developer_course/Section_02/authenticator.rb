users = [
          {username: "paul", password: "password1"},
          {username: "kellie", password: "password2"},
          {username: "lucas", password: "password3"},
          {username: "emma", password: "password4"},
          {username: "milo", password: "password5"},
          {username: "penny", password: "password6"}
        ]

puts
puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "Enter you credentials to return the user object:"
puts

count = 1

while count < 4 do

  # puts "Count = #{count}"
  print "Username: "
  user_name = gets.chomp.strip
  print "Password: "
  password = gets.chomp.strip

  # Loop through the users 'database'
  users.each do | user |

    # puts user

    # Find this username matches supplied username
    if user[:username] == user_name

      # If username matched, confirm if correct password was supplied
      if user[:password] == password

        # Print user data and exit
        puts "User Data: #{user}"
        abort "Authentication Successful..."

      end

    end

  end

  # Note failed attempts for either username or password problems
  puts "The supplied credentials were not valid."

  if count < 3

    # Determine if the user wants to try again and if not exit
    puts "Type 'n' to quit, or hit the Enter key to try again:"
    quit = gets.chomp.downcase

    if quit == 'n'

      abort "Quitting the authenticator..."

    end

  else

    puts "You have exceeded the allowed number of attempts"
    abort

  end

  count += 1

end
