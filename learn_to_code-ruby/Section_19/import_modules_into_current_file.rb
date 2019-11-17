# require "./learn_to_code-ruby/Section_19/rectangle.rb"
# require "./learn_to_code-ruby/Section_19/square"
# require "./learn_to_code-ruby/Section_19/circle"

require_relative "rectangle.rb"
require_relative "square"
require_relative "circle"

puts Square.area(4)
puts Rectangle.area(3,10)
puts Circle.area(10)
