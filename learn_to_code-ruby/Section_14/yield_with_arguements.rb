def speak_the_truth

  yield("Paul") if block_given?

end

speak_the_truth { |name| puts "#{name} is my name"}
puts

def speak_the_truth(name)

  yield(name) if block_given?

end

speak_the_truth("Paul") { |name| puts "#{name} is my name"}
puts

def number_evaluation(number_1, number_2, number_3)

  puts "Inside the method"
  yield(number_1, number_2, number_3)

end

result = number_evaluation(5, 10, 15) { |number_1, number_2, number_3| number_1 * number_2 * number_3 }
p result
