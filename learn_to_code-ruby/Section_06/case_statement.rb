# Standard Case statement
def rate_my_food(food)

  food = food.downcase()
  puts "Would you like #{food}?"

  case food

  when "steak"

    puts "I like steak."

  when "pizza"

    puts "I like pizza"

  when "tacos", "quesadillas"

    puts "That sounds good."

  else
    
    puts "Not sure if I like that food."
  
  end

  puts

end

rate_my_food("steak")
rate_my_food("Quesadillas")
rate_my_food("eggs")
puts


# For small actions use then
def calculate(grade)

  case grade

  when 90..100 then puts "A"
  when 80..89 then puts "B"
  when 70..79 then puts "C"
  when 60..69 then puts "D"
  else puts "F"
  
  end

  puts

end

calculate(94)
calculate(83)
calculate(58)