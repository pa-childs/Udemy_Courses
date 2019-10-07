names = ["milo", "cameron", "carol anne"]

p names[1]
p names.fetch(1)
puts

# Fetch throws error if the index doesn't exist
p names[10]
#p names.fetch(10)
p names.fetch(10, "Invalid Index")