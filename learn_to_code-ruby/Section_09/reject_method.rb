grades = [80, 95, 69, 73, 78]

failing_grades = grades.reject do |number|

  # Must evaluate to bolean value
  number >= 70

end

p failing_grades
puts

words = ["level", "selfless", "racecar", "dinosaur"]

not_palindromes = words.reject { |word| word == word.reverse }

p not_palindromes
