sentence = "Once upon a time in a land far far away"

def word_count(string)

  # Return a hash where the keys will represent
  # the words in the string and the values will
  # represent how many times that key occurs

  words_hash = {}
  # Adding default value means logic for loop through array is easier
  words_hash.default = 0

  # turn sentance into array
  words = string.split(" ")

  # iterate over the array
  # place words in hash as keys and count occurances
  words.each do |word|

      words_hash[word] +=1

  end

  # return hash
  return words_hash

end

p word_count(sentence)
