evens = [2, 4, 6, 8, 10]

evens.each { |number| puts number **2 }
puts

colors = ["Red", "Blue", "Green", "Purple"]
statements = colors.map { |color| "#{color} is a great color."}
puts statements
puts

5.times do |index|

  puts "Loop number #{index + 1}."

end
