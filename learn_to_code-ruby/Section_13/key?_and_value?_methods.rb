cars = {toyota: "camry",
        chevrolet: "aveo",
        ford: "focus",
        kia: "soul"}

# Use key name or symbol to find if key exists
p cars.key?(:toyota)
p cars.key?(:honda)
puts

p cars.value?("camry")
p cars.value?("wrangler")
