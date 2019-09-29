def make_phone_call(number, international_code=1, area_code=734)

  puts "#{international_code} (#{area_code}) #{number}"

end

make_phone_call("555-1234")
make_phone_call("555-4321", 4)
make_phone_call("555-4321", 1, 248)
