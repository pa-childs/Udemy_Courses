string = "Hello World"

# each_char method lets you iterate over the strings characters
string.each_char { |letter| puts letter }
puts

# char method puts the letters in an array
string_array = string.chars
p string_array

# split method does same if split on empty string ("")
string_array = string.split("")
p string_array
