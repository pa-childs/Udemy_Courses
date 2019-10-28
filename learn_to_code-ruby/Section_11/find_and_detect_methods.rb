words = ["dictionary", "regriderator", "platypus", "microwave"]

p words.select { |word| word.length > 8 }

# find method will find only the first occurance of the critera searched for
p words.find { |word| word.length > 8 }

# detect does the same damn thing
lottery = [4, 8, 15, 16, 23, 42]

result = lottery.detect do |number|

  number.odd?

end

p result

# find the last occurance
p lottery.reverse.find { |number| number.odd? }
