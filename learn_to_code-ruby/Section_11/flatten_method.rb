# removes nested arrays within an array
registrations = [
                ["Emma", "Kellie", "Lucas"],
                [["Milo", "Penny"], "Cameron"],
                ["Max", "Jason", ["Raj"]],
              ]

p registrations.flatten
p registrations
puts

# there is a bang method for the flatten method
registrations.flatten!
p registrations
