# the below are different objects and stored in different placed in memory
a = [1, 2, 3]
b = [1, 2, 3]

p a.object_id
p b.object_id

p a.object_id == b.object_id
puts

# the below are the same object and point to the same place in memory
c = [1, 2, 3]
d = c

p c.object_id
p d.object_id

p c.object_id == d.object_id

c.push(4)
p d
puts

# the below creates a duplicate, not a copy, so the objects are different
e = d.dup
p d.object_id
p e.object_id

p d.object_id == e.object_id

p d
p e
