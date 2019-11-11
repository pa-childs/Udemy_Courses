string = "She sells sea shells at the sea shore."

p string.scan(/S/)
p string.scan(/s/)
p string.scan(/ll/)
p string.scan(/sea/)
p string.scan(/[Ss]/)
puts

string = "My favorite numbers are; 4, 6, 10, 25, 42, 50"
p string.scan(/\d/)     # Scan for digits
p string.scan(/\d+/)    # Scan for one or more digits
puts

string.scan(/\d+/) { |match| puts "Match found:  #{match}" }
