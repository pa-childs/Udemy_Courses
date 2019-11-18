module Announcer

  def who_am_i

    return "The name of this class is #{self}"

  end

end

class Dog

  # Methods can be used by objects created from the class
  include Announcer

end

class Cat

  # methods can be used by the class, not the objects from the class
  extend Announcer

end

watson = Dog.new
p watson.who_am_i
puts

p Cat.who_am_i
