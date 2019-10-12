locations = ["House" , "Airport", "Store"]
p locations

# Push method adds new elements to end of array
locations.push("Restaurant")
p locations

locations.push("School", "Park")
p locations

# Shovel operation is same as push, with different syntax
locations << "University"
p locations
puts

locations = ["House" , "Airport", "Store"]
p locations

# Insert adds element before the supplied index postion
locations.insert(1, "Park")
p locations