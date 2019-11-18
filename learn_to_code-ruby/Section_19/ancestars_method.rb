module Purchaseable

  def purchase(item)

    "#{item} has been purchased"

  end

end

class Bookstore

  include Purchaseable

  def purchase(item)

    "The book #{item} has been purchased"

  end

end

class Supermarket

  include Purchaseable

  def purchase(item)

    "#{item} has been purchased at the Supermarket"

  end

end

class Market < Supermarket

  def purchase(item)

    "#{item} has been purchased at the Market"

  end

end

p Bookstore.ancestors
my_bookstore = Bookstore.new
p my_bookstore.purchase("Harry Potter")
puts

p Supermarket.ancestors
my_supermarket = Supermarket.new
p my_supermarket.purchase("Cereal")
puts

p Market.ancestors
my_market = Market.new
p my_market.purchase("Soda")
