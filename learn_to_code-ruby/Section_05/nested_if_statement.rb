def meal_plan(time_of_week, time_of_day)

  if time_of_week == "weekday"

    if time_of_day == "breakfast"

      puts "You eat a scrambled eggs"

    elsif time_of_day == "lunch"

      puts "You eat a pizza"

    elsif time_of_day == "dinner"

      puts "You eat a hamburger"

    end

  elsif time_of_week == "weekend"

    if time_of_day == "breakfast"

      puts "You eat a french toast"

    elsif time_of_day == "lunch"

      puts "You eat a sandwich"

    elsif time_of_day == "dinner"

      puts "You eat a stir fry"

    end

  end

end

meal_plan("weekday", "lunch")
puts
meal_plan("weekday", "dinner")
puts
meal_plan("weekend", "breakfast")
puts
meal_plan("weekend", "dinner")
