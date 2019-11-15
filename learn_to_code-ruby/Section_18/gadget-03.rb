class Gadget

  def initialize

    @username = "User #{rand(1..100)}"
    @password = "password"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"

  end

  def gadget_data

    return "Production Number: #{@production_number}\nUsername: #{@username}"

  end

end

phone = Gadget.new

puts phone.inspect
puts phone.instance_variables
puts
puts phone.gadget_data
