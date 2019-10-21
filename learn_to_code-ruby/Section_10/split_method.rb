string = "Hi, My name is Paul. There are spaces here!"

p string.split
p string.split(".")

words = string.split

words.each { |word| puts "#{word} has #{word.length} characters " }
