module Purchaseable

  def purchase(item)

    "#{item} has been purchased"

  end

end

class Bookstore

  include Purchaseable

end

class Supermarket

  include Purchaseable

end

class Market < Supermarket

end

my_bookstore = Bookstore.new
p my_bookstore.purchase("The Hobbit")
puts

my_supermarket = Supermarket.new
p my_supermarket.purchase("Apple")
puts

my_market = Market.new
p my_market.purchase("Soda")
