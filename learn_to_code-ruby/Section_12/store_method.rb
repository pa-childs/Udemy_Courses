menu = {hamburger: 3.99,
        taco: 2.50,
        chicken_nuggets: 3.00}

# Add keys or change values with bracket syntax
menu[:nachos] = 2.75
menu[:hamburger] = 3.25
p menu
puts

# store method can be used to add a new key value pair
menu.store(:salad, 2.75)
p menu
