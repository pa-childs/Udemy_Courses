class Candidate

  attr_accessor :name, :age, :occupation , :hobby, :birthplace

  def initialize(name, details)

    @name = name
    @age = details[:age]
    @occupation = details[:occupation]
    @hobby = details[:hobby]
    @birthplace = details[:birthplace]

  end

end

info = { age: 12, occupation: "Cat", hobby: "Sleeping", birthplace: "Michigan"}

senator = Candidate.new("Milo", info)
p senator.name
p senator.hobby
puts

info = { age: 6, occupation: "Dog", birthplace: "West Virginia"}

senator = Candidate.new("Penny", info)
p senator.name
p senator.hobby
