class Gadget

end

# Object Alias

# Different objects
shiny = Gadget.new
flashy = Gadget.new

p shiny.object_id
p flashy.object_id
puts

# Same object with different name
glossy = shiny

p shiny.object_id
p glossy.object_id
