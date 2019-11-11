string = "She sells sea shells at the sea shore. She does very well for herself."

# determine number of consonants in string
puts string.scan(/[^aeiouAEIOU\s\.]/).length
