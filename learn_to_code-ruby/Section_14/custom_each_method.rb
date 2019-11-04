def custom_each(array)

  index = 0

  while index < array.length

    yield array[index]
    index += 1

  end

end

names = ["Penny", "Milo", "Cameron"]
numbers = [10, 20, 30]

custom_each(names) do |name|

  puts "The length of #{name} is #{name.length}"

end

puts

custom_each(numbers) do |number|

  puts "The square of #{number} is #{number ** 2}"

end
