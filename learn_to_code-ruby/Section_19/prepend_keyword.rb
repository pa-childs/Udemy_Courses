module Purchaseable

  def purchase(item)

    "#{item} has been purchased"

  end

end

class Bookstore

  # prepend makes the Purchaseable methods have priority in inheritance
  prepend Purchaseable

  def purchase(item)

    "The book #{item} has been purchased"

  end

end

p Bookstore.ancestors
my_bookstore = Bookstore.new
p my_bookstore.purchase("Harry Potter")
