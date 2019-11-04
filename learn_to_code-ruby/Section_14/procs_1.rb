# Proc is a saved block
a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [11, 12, 13, 14, 15]

a_cubes = a.map { |number| number ** 3 }
b_cubes = b.map { |number| number ** 3 }
c_cubes = c.map { |number| number ** 3 }

p a_cubes
p b_cubes
p c_cubes
puts

cubes = Proc.new { |number| number ** 3 }

a_cubes = a.map(&cubes)
b_cubes = b.map(&cubes)
c_cubes = c.map(&cubes)

p a_cubes
p b_cubes
p c_cubes
puts

currency_amount = [10, 20, 30, 40, 50]

to_euros = Proc.new { |currency| currency * 0.95 }
to_rupees = Proc.new { |currency| currency * 68.13 }
to_pesos = Proc.new { |currency| currency * 20.67 }

p currency_amount.map(&to_euros)
p currency_amount.map(&to_rupees)
p currency_amount.map(&to_pesos)
puts

ages = [10, 60, 83, 30, 43, 25]

is_older = Proc.new do |age|

  age > 55

end

p ages.select(&is_older)
