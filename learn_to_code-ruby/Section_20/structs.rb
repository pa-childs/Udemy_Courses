require_relative 'app_store'

class Gadget

  # attr sets up basic getter and setter methods
  attr_accessor :username                # Sets up both types of methods
  attr_reader :production_number, :apps  # Sets up reader only

  def initialize(username, password)

    @username = username
    @password = password
    @production_number = generate_production_number

  end

  def gadget_data

    # instead of using instance variables, use instance getter methods
    puts "Production Number: #{production_number}"
    puts "Username: #{username}"
    puts "ID: #{self.class}-#{object_id}"

  end

  # Doesn't work, no idea why, looks same as instructor code as far as I can tell
  def install_app(name)

    app = AppStore.find_app(name)

    @apps << app unless @apps.include?(app)

  end

  def delete_app(name)

    app = apps.find { |installed_app| installed_app.name == name }

    apps.delete(app) unless app.nil?

  end

  def reset(username, password)

    self.username = username
    self.password = password
    self.apps = []


  end

  def password=(new_password)

    @password = new_password if validate_password(new_password)

  end

  private

  attr_writer :apps  # Sets up private writer only

  def generate_production_number

    start_digits = rand(10000..99999)
    end_digits = rand(10000..99999)
    alphabet = ("A".."Z").to_a
    middle_digits = Time.now.strftime("%Y")

    5.times {middle_digits << alphabet.sample}
    return "#{start_digits}-#{middle_digits}-#{end_digits}"

  end

  def validate_password(new_password)

    new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/

  end

end

phone = Gadget.new("User-01", "password")

p phone.apps

phone.install_app(:Chat)
p phone.apps
