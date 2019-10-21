fact = "Dogs are awesome."

p fact.index("a")
p fact.index("awe")

# Can set where the search for the character will start.
p fact.index("a", 6)
puts

# rindex does the opposite of index
p fact.rindex("a")
p fact.rindex("a", 8)
puts

def custom_index(string, substring)

  # If substring not in string your done
  return nil unless string.include?(substring)

  # If substring is in string get length of substring
  length = substring.length

  # Iterate through string of characters while tracking the index
  string.chars.each_with_index do |char, index|

    # Look for substring at each index and return index if found
    sequence = string[index, length]
    return index if sequence == substring

  end

end

p custom_index(fact, "a") # 5
p custom_index(fact, "D") # 0
p custom_index(fact, "z") # nil
p custom_index(fact, "awe") # 9
