class Gadget

  def initialize

    @username = "User #{rand(1..100)}"
    @password = "password"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"

  end

end

phone = Gadget.new

puts phone.inspect
puts phone.instance_variables
