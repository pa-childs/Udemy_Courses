def longest_word(sentence)

  characters = 0
  longest_word = ""
  words = sentence.split

  words.each do |word|

    if word.length >= characters

      characters = word.length
      longest_word = word

    end

  end
  
  return longest_word

end

p longest_word("Penny is the nicest dog.")
p longest_word("Milo is the most surly cat")
