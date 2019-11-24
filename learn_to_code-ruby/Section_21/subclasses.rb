class Employee

  attr_accessor :age
  attr_reader :name

  def initialize(name, age)

    @name = name
    @age = age

  end

  def introduce

    return "Name: #{name}  Age:#{age}"

  end

end

class Manager < Employee
end

class Worker < Employee
end

employee_1 = Manager.new("Milo", 30)
puts employee_1.introduce
puts employee_1.class
puts

employee_2 = Worker.new("Penny", 20)
puts employee_2.introduce
puts employee_2.class
puts

p Manager.ancestors
p Manager.superclass
puts

puts Manager < Employee
puts Manager < Object
puts Manager > Employee
puts

puts employee_1.is_a?(Manager)
puts employee_1.is_a?(Employee)
puts employee_1.is_a?(Worker)
puts

puts employee_1.instance_of?(Manager)
puts employee_1.instance_of?(Employee)
puts employee_1.instance_of?(Worker)
