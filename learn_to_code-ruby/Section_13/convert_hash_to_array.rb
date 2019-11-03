spice_girls = {scary: "Melanie Brown",
               sporty: "Menanie Chisholm",
               baby: "Emma Bunton",
               ginger: "Geri Halliwell",
               posh: "Victoria Beckham"}

# Displays each key-value as an array within an array
p spice_girls.to_a

# Can make one non-nested array if desired
p spice_girls.to_a.flatten
puts

avengers = [[:iron_man, "Tony Stark"],
            [:captain_america,"Steve Rogers"],
            [:black_widow,"Natasha Romanoff"],
            [:hulk,"Bruce Banner"],
            [:scarlet_witch,"Wanda"]
]

p avengers.to_h
