colors = ["red", "blue", "green", "yellow"]

colors.each do |color|

  puts "Moving on to the next one"
  puts "The current color is #{color}"
  puts

end

colors.each_with_index do |color, index|

  puts "Moving on to index number #{index}"
  puts "The current color is #{color}"
  puts

end

fives = [5, 10, 15, 20, 25]

fives.each_with_index do |number, index|

  puts "The index is #{index}"
  puts number * index

end
