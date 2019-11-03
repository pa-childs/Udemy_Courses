avengers = [[:iron_man, "Tony Stark"],
            [:captain_america,"Steve Rogers"],
            [:black_widow,"Natasha Romanoff"],
            [:hulk,"Bruce Banner"],
            [:scarlet_witch,"Wanda"]
]

# Converts to array and sorts array by key
p avengers.sort
puts

# Can sort by key or value using sort_by, but still outputs an array of arrays
p avengers.sort_by { |name, identity| name}
p avengers.sort_by { |name, identity| identity}
