# substitutes the first instance of substring with another substring
puts "whimper".sub("m", "s")
puts "wordplay".sub("w", "sw")

word = "asprin"

# Bang method will change the original string
word.sub!("in", "ing")
puts word

# global substitution happens with gsub
puts "an apple".gsub("a", "-")
puts "123 456 7890".gsub(" ", "-")
puts "(123) 456-7890".gsub(/[\(\)\s-]/, "")

# Bang method will change the original string
number = "(123) 456-7890"

number.gsub!(/[\(\)\s-]/, "")
puts number
