class Gadget

  def initialize

    @username = "User #{rand(1..100)}"
    @password = "password"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"

  end

  def gadget_data

    puts "Production Number: #{@production_number}"
    puts "Username: #{@username}"
    puts "ID: #{self.class}-#{self.object_id}"

  end

end

phone = Gadget.new

puts phone.gadget_data
