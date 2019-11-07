require 'time'

puts Time.parse("2019-11-19")
puts

puts Time.parse("03-04-2019")
puts Time.strptime("03-04-2019", "%m-%d-%Y")
