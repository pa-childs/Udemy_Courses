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

  def get_username

    return @username

  end

  def get_production_number

    return @production_number

  end

  def edit_username(new_username)

    @username = new_username

  end

  def username=(new_username)

    @username = new_username

  end

  def edit_password(new_password)

    @password = new_password

  end

end

phone = Gadget.new

puts phone.get_username
puts phone.get_production_number
puts

phone.edit_username("my_username")
phone.edit_password("my_password")
phone.username = "test"  # Can only do if username= method is set up
puts phone.get_username
