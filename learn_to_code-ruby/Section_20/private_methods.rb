class Gadget

  # attr sets up basic getter and setter methods
  attr_accessor :username          # Sets up both types of methods
  attr_reader :production_number   # Sets up reader only
  attr_writer :password            # Sets up writer only

  def initialize(username, password)

    @username = username
    @password = password
    @production_number = generate_production_number

  end

  def gadget_data

    puts "Production Number: #{@production_number}"
    puts "Username: #{@username}"
    puts "ID: #{self.class}-#{self.object_id}"

  end

  private
  def generate_production_number

    start_digits = rand(10000..99999)
    end_digits = rand(10000..99999)
    alphabet = ("A".."Z").to_a
    middle_digits = Time.now.strftime("%Y")

    5.times {middle_digits << alphabet.sample}
    return "#{start_digits}-#{middle_digits}-#{end_digits}"

  end

end

phone = Gadget.new("User-01", "password")
p phone.production_number
