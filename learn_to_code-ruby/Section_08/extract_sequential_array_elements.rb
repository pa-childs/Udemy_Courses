numbers = [1, 3, 5, 8, 12, 17, 20, 23]

# Ranges are pulled out as an array
p numbers[2, 5]
p numbers[0, 1]
p numbers[0]

# Asking for more than exists returns all that exists within range
p numbers[2, 10]