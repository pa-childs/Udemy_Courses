class ConvenienceStore

  include Enumerable

  attr_reader :snacks

  def initialize

    @snacks = []

  end

  def add_snacks(snack)

    snacks << snack

  end

  def each

    snacks.each do |snack|

      yield snack

    end

  end

end

bodega = ConvenienceStore.new
bodega.add_snacks("Chips")
bodega.add_snacks("Snickers")
bodega.add_snacks("M&Ms")
p bodega.snacks
puts

bodega.each { |snack| puts "The bodega has #{snack}."}
puts

p bodega.any?("Chips")
p bodega.all?{ |snack| snack.length > 3}
p bodega.snacks
p bodega.map{ |snack| snack.upcase}
p bodega.select{ |snack| snack.downcase.include?"m"}
p bodega.sort
