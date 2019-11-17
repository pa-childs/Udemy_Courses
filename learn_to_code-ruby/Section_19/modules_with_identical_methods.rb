module Square

  def self.area(side)

    return side * side

  end

end

module Rectangle

  def self.area(length, width)

    return length * width

  end

end

module Circle

  PI = 3.14159

  def self.area(radius)

    return PI * radius ** 2

  end

end

puts Square.area(5)
puts Rectangle.area(5, 10)
puts Circle.area(10)
