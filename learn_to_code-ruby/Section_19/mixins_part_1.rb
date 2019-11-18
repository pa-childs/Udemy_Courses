class OlympicMedal

  include Comparable

  MEDAL_VALUES = {"Gold" => 3, "Silver" => 2, "Bronze" => 1}

  attr_reader :type

  def initialize (type, weight)

    @type = type
    @weight = weight

  end

  def <=>(other)

    if MEDAL_VALUES[type] < MEDAL_VALUES[other.type]

      return -1

    elsif MEDAL_VALUES[type] == MEDAL_VALUES[other.type]

      return 0

    else

      return 1

    end

  end

end

bronze = OlympicMedal.new("Bronze", 5)
silver = OlympicMedal.new("Silver", 10)
gold = OlympicMedal.new("Gold", 3)

puts bronze > silver
puts bronze < silver
puts gold > silver
puts bronze > gold
puts bronze == bronze
puts silver.between?(bronze, gold)
