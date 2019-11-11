string = "She sells sea shells at the sea shore. The quick brown fox jumps over the lazy dog."

p string.scan(/\./)
puts
p string.scan(/\D/)  # non-digits
p string.scan(/\s/)  # white space
p string.scan(/\s/)  # non-white space
