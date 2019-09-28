story = "Once upon a time in a land far, far away..."

# index to index inclusive
puts story[27..39]
puts story.slice(27..39)
puts

# index to index exclusive of last index
puts story[27...39]
puts story.slice(27...39)
puts

# no error if 2nd index doesn't exist
puts story[27..100]
puts story.slice(27..100)
puts

# can mix positive and negative indexes
puts story[27..-4]
puts story.slice(27..-4)
