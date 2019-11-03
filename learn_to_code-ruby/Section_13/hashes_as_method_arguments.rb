def calculate_total_1(price, tip, tax)

  tax_amount = price * tax
  tip_amount = price * tip
  total = price + tip_amount + tax_amount

  return total

end

puts calculate_total_1(24.99, 0.18, 0.07)
puts calculate_total_1(0.18, 0.07, 24.99)
puts

bill = {price: 24.99, tip: 0.18, tax: 0.07}
other_bill = {tip: 0.18, tax: 0.07, price: 24.99}

def calculate_total_2(info)

  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  total = info[:price]  + tip_amount + tax_amount

  return total

end

puts calculate_total_2(bill)
puts calculate_total_2(other_bill)
