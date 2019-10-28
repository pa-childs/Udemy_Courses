# more methods that duplicate there functions
numbers = [10, 20, 30, 40]

result = numbers.reduce(0) do |last_result, current_result|

  puts "The last result value is {#{last_result}}"
  puts "The current result vaule is {#{current_result}}"

  last_result + current_result

end

puts result
puts


numbers = [10, 20, 30, 40]

result = numbers.inject(0) do |last_result, current_result|

  puts "The last result value is {#{last_result}}"
  puts "The current result vaule is {#{current_result}}"

  last_result + current_result

end

puts result
