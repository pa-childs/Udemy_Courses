prizes = ["Pyrite", "Pyrite", "Pyrite", "Pyrite", "Gold", "Pyrite"]

index = 0

while index < prizes.length

  current = prizes[index]

  if current == "Gold"

    puts "The prize is Gold"
    break

  else

    puts "No Gold prize yet"

  end

  index += 1

end

puts

numbers = [1, 2, 3 , 4, "Not a Number", 5, 6, 7]

numbers.each do |number|

  if number.is_a?(Integer)

    puts "The square of #{number} is #{number ** 2}"

  else

    puts "Invalid Data Provided"
    break

  end

end
