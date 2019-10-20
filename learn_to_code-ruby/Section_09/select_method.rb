grades = [80, 95, 69, 73, 78]

passing_grades = grades.select do |number|

  # Must evaluate to bolean value
  number >= 70

end

p passing_grades
puts

words = ["level", "selfless", "racecar", "dinosaur"]

palindromes = words.select { |word| word == word.reverse }

p palindromes
