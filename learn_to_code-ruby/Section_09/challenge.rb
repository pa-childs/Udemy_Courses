whole_numbers = [5 ,8, 13 ,15, 18, 22, 25, 28]
no_numbers = []

def evens_and_odds(array)

  return array.partition { |number| number.odd? }

end



p evens_and_odds(whole_numbers)
p evens_and_odds(no_numbers)
puts

p evens_and_odds([4, 8, 15, 16, 23, 42])
p evens_and_odds([2, 4, 6])
p evens_and_odds([1, 3, 5])
