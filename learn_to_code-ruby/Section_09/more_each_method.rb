fives = [5, 10, 15, 20, 25, 30, 35, 40]
odds = []

fives.each do |number|

  if number.even?

    puts number

  end

end
puts

fives.each do |number|

  if number.odd?

    odds.push(number)

  end

end

p odds
puts

fives = [5, 10, 15, 20, 25, 30, 35, 40]

def split_numbers(numbers)

  odd_array = []
  even_array = []

  numbers.each do |number|

    if number.even?

      even_array.push(number)

    else 

      odd_array.push(number)

    end

  end

  p odd_array
  p even_array

end

split_numbers(fives)
puts

odd_array = []
even_array = []

fives.each { |number| number.even? ? even_array << number : odd_array << number }

p odd_array
p even_array
