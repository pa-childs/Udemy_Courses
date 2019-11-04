start_of_year = Time.new(2019, 1, 1)
p start_of_year
puts

# Add seconds to change time
p start_of_year + 1                     # seconds
p start_of_year + (60 * 1)              # minutes
p start_of_year + (60 * 60)             # hours
p start_of_year + (60 * 60 * 24)        # day
p start_of_year + (60 * 60 * 24 * 365)  # year
puts

def find_day_of_year_by_number(number)

  first_day_of_year = Time.new(2019, 1, 1)

  target_date = first_day_of_year + (60 * 60 * 24 * (number - 1))

  if target_date.yday == number

    return "In #{number} days it will be #{target_date}"

  end

end

p find_day_of_year_by_number(35)
p find_day_of_year_by_number(150)
p find_day_of_year_by_number(25)
p find_day_of_year_by_number(365)
