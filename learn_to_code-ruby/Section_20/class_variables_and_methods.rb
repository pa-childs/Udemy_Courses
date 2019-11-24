class Bicycle

  @@maker = "BikeTech"
  @@count = 0

  def self.description

    "BikeTech is a bicycle company"

  end

  def self.count

    @@count

  end

  def maker

    @@maker

  end

  def initialize

    @@count += 1

  end

end

puts Bicycle.description
puts Bicycle.count

my_bike = Bicycle.new
puts my_bike.maker

your_bike = Bicycle.new
her_bike = Bicycle.new
puts Bicycle.count
