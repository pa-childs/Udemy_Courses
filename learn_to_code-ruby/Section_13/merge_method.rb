market = {garlic: "3 cloves", milk: "2 gallons", bread: "1 loaf"}
kitchen = {soda: "3 cans", soup: "4 cans", milk: "3 gallons"}

# For common keys the merged key is kept
p kitchen.merge(market)
p kitchen

# merge has a bang version that modifies the original hash
p kitchen.merge!(market)
p kitchen
