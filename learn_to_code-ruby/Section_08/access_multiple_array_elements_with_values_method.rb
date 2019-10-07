channels = ["CBS", "NBC", "ABC", "FOX", "UPN"]

p channels.values_at(1)
p channels.values_at(0, 1, 2)
p channels.values_at(0, -1)
p channels.values_at(0, 1, 10)