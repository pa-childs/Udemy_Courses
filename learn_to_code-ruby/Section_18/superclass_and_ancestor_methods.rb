p 5.class
p 5.class.superclass
p 5.class.superclass.superclass
p 5.class.superclass.superclass.superclass
puts

p 5.5.class
p 5.5.class.superclass
p 5.5.class.superclass.superclass
p 5.5.class.superclass.superclass.superclass
puts

p "Hello World".class
p "Hello World".class.superclass
p "Hello World".class.superclass.superclass
puts

p [5].class
p [5].class.superclass
p [5].class.superclass.superclass
puts

# The ancestors method displays inherited classes and modules
p 5.class.ancestors
