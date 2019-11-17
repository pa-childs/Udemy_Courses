class Gadget

  def initialize

    @username = "User-#{rand(1..100)}"
    @password = "password"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"

  end

  def gadget_data

    puts "Production Number: #{@production_number}"
    puts "Username: #{@username}"
    puts "ID: #{self.class}-#{self.object_id}"

  end

  # attr sets up basic getter and setter methods
  attr_accessor :username          # Sets up both types of methods
  attr_reader :production_number   # Sets up reader only
  attr_writer :password            # Sets up writer only

end

phone = Gadget.new

puts phone.username
puts phone.production_number
puts

phone.username = "my_username"
phone.password = "my_password"

puts phone.username
