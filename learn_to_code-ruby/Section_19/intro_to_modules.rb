module LengthConversions

  def self.miles_to_feet(miles)

    return miles * 5280

  end

  def self.miles_to_inches(miles)

    feet = miles_to_feet(miles)
    return feet * 12

  end

  def self.miles_to_centimeters(miles)

    inches = miles_to_inches(miles)
    return inches * 2.54

  end

end

puts LengthConversions.miles_to_feet(1)
puts LengthConversions.miles_to_inches(1)
puts LengthConversions.miles_to_centimeters(1)
