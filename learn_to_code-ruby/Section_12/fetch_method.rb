menu = {hamburger: 3.99,
        taco: 2.50,
        chicken_nuggets: 3.00}

p menu[:hamburger]
p menu[:chicken_nuggets]
p menu[:salad]

# fetch can be used to handle keys that are not found
p menu.fetch(:hamburger)
p menu.fetch(:taco)
p menu.fetch(:salad, "Key Not Found")
