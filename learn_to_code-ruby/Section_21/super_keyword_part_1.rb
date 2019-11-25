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

  attr_reader :rank

  def initialize(name, age, rank)

    super(name, age)
    @rank = rank

  end

  def introduce

    result = super
    result += "  Position: #{rank}"

    return result

  end

end



employee_1 = Manager.new("Milo", 30, "Manager")
puts employee_1.name
puts employee_1.age
puts employee_1.rank
puts employee_1.introduce
puts

employee_2 = Employee.new("Penny", 20)
puts employee_1.name
puts employee_1.age
puts employee_1.introduce
