# Binds elements of two arrays together based on index position
names = ["jim", "sally", "peter"]
registrations = [true, false, false]

p names.zip(registrations)

# works with multiple arrays
p [1, 2, 3].zip([4, 5, 6], ["A", "B", "C"])
