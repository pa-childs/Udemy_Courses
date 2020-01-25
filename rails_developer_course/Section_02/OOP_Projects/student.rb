class Student

  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, email, username, password)

    @first_name = firstname
    @last_name = lastname
    @email = email
    @username = username
    @password = password

  end

  def to_s

    "First Name: #{@first_name} \nLast Name: #{@last_name}\nEmail: #{@email}\nUsername: #{@username}\nPassword: #{@password}"

  end

end

milo = Student.new("Milo", "Childs", "milo.childs", "milo.childs@gmail.com", "password1")
penny = Student.new("Penny", "Childs", "penny.childs", "penny.childs@gmail.com", "password2")

puts milo
puts
puts penny
