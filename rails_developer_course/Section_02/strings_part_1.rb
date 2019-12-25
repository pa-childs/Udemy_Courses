# String concatenation
sentence = "My name if Paul"
p sentence

first_name = "Paul"
last_name = "Childs"
puts first_name + " " + last_name
puts

# String interpolation
puts "My first name is Paul and my last name is Childs"
puts "My first name is #{first_name} and my last name is #{last_name}"
full_name = "#{first_name} #{last_name}"
puts full_name
puts

# Methods on Strings
puts full_name.class
p full_name.methods

# Common Methods
puts full_name.length
puts full_name.reverse
p 10.class
new_string = 10.to_s
p new_string.class
sentence = "Welcome to the jungle"
p sentence.sub("the jungle", "utopia")
puts

# Variable assignment
first_name = "Paul"
new_first_name = first_name
p new_first_name == first_name
first_name = "John"
p new_first_name == first_name
puts

# Escaping
sentence = 'the new first name is #{new_first_name}'
p sentence
sentence = 'Mashrur asked \'Hey John, how are you doing?\''
p sentence
