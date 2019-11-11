puts //.class

phrase = "This is a string."

# Returns the index position of where the string starts
puts phrase =~ /This/
puts phrase =~ /string/
puts phrase =~ /i/       # Returns first of character in string
puts phrase =~ /./       # Special Characters can have special meaning
puts phrase =~ /\./      # Special Characters need to be escaped

# If not found, it returns nil
p phrase =~ /integer/
