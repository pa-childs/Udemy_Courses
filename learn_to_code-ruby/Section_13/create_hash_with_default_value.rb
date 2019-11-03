fruit_prices = {apple: 1.05}

p fruit_prices[:apple]
p fruit_prices[:grapes]
p fruit_prices[:orange]
puts

# Set default value
fruit_prices = Hash.new("Not Found")

fruit_prices[:apple] = 1.05

p fruit_prices[:apple]
p fruit_prices[:grapes]
puts

fruit_prices.default = "Prince Not Available"
p fruit_prices[:orange]
