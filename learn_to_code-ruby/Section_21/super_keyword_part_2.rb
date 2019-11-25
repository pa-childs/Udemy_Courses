# super without parentheses
# super with parentheses but no arguements
# super with parentheses and with arguements

class Car

  attr_reader :make

  def initialize(make)

    @make = make

  end

  def drive

    "Engine On."

  end

end

class Firetruck < Car

  attr_reader :sirens

  def initialize(make, sirens)

    super(make)
    @sirens = sirens

  end

  def drive(speed)

    super() + "  Sirens On.  Driving #{speed}"

  end

end

fire_truck = Firetruck.new("Ford", 4)
p fire_truck.drive(45)
p fire_truck.make
p fire_truck.sirens
