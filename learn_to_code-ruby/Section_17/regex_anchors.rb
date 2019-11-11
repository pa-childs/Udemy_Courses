string = "She sells sea shells at the sea shore. She does very well for herself."

# Anchor using a way only Ruby does it
p string.scan(/\AShe/)
p string.scan(/herself.\Z/)

# Or do it the way every other language does it?
p string.scan(/^She/)
p string.scan(/herself.$/)
