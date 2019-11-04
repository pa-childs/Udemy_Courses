ground_hog_day = Time.new(2019, 2, 2)
summer = Time.new(2019, 6, 21)
independance_day = Time.new(2019, 7, 4)
winter = Time.new(2019, 12, 21)

puts ground_hog_day < summer
puts independance_day > winter
puts summer == Time.new(2019, 6, 21)
puts summer == Time.new(2019, 6, 21 , 12, 0, 0)
puts summer != Time.new(2019, 6, 21 , 12, 0, 0)
puts

puts independance_day.between?(summer, winter)
puts ground_hog_day.between?(summer, winter)
