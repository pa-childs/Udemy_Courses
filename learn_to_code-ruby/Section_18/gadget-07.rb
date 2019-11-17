class Gadget

  # attr sets up basic getter and setter methods
  attr_accessor :username          # Sets up both types of methods
  attr_reader :production_number   # Sets up reader only
  attr_writer :password            # Sets up writer only

  def initialize(username, password)

    @username = username
    @password = password
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"

  end

  def gadget_data

    puts "Production Number: #{@production_number}"
    puts "Username: #{@username}"
    puts "ID: #{self.class}-#{self.object_id}"

  end

end

phone = Gadget.new("User-01", "my_password")
puts phone.username
puts phone.production_number
puts
phone.username = "User-02"
puts phone.username
