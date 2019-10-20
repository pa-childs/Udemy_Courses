foods = ["pancakes", "oatmeal", "french toast", "toast", "eggs"]

group_1 = foods.select { |food| food.include?("toast") }
group_2 = foods.reject { |food| food.include?("toast") }

p group_1
p group_2
puts

p foods.partition { |food| food.include?("toast") }
puts

group_1, group_2 = foods.partition { |food| food.include?("toast") }

p group_1
p group_2
