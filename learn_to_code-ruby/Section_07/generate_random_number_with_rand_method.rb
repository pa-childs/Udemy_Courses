# Generates numbers betweem 0 and 1
puts rand
puts rand.round(2)
puts

# Value sets range, value isn't included in range
puts rand(100)  # 0-99
puts

# Random number between 1-100
puts (rand * 100).round(0)
puts

# Generate a random number between range
puts rand(5..10)
puts rand(5...10)
puts rand(1..100)