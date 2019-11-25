class Candidate

  attr_accessor :name, :age, :occupation , :hobby, :birthplace

  def initialize(name, details = {})

    defaults = { age: "Missing",
    occupation: "Missing",
    hobby: "Missing",
    birthplace: "Missing" }

    defaults.merge!(details)

    @name = name
    @age = defaults[:age]
    @occupation = defaults[:occupation]
    @hobby = defaults[:hobby]
    @birthplace = defaults[:birthplace]

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
puts

info = { age: 18, occupation: "Cat", hobby: "Being Cute", birthplace: "Michigan"}

senator = Candidate.new("Cameron")
p senator.name
p senator.hobby
