def calculate_number(number, &my_prc)

  puts "Calculating..."
  my_prc.call(number)

end

number_cubed = Proc.new { |number| number ** 3 }

number_squared = Proc.new { |number| number ** 2 }

p calculate_number(5, &number_cubed)
p calculate_number(5, &number_squared)
