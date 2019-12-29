area_code_hash = {
  "new york" => "212",
  "new brunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "san francisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(area_code_hash)

  puts
  puts "Which city do you want the area code for?"
  area_code_hash.each { |key, value| puts key}
  puts

end

# Get area code based on given hash and key
def get_area_code(area_code_hash, key)

  if area_code_hash.key?(key)

    puts "The area code for #{key} is: #{area_code_hash[key]}"

  else

    puts "The area code for that city is not available."

  end

end

# Execution flow
loop do

  print "Do you want to lookup an area code based on a city name?(y/n) "
  lookup_answer = gets.chomp.downcase

  unless lookup_answer == "y"

    puts
    puts "Aborting search..."
    break

  end

  get_city_names(area_code_hash)

  puts "Enter your selection:"
  city = gets.chomp.downcase

  get_area_code(area_code_hash, city)

end
