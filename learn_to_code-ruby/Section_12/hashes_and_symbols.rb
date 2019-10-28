# Symbols are used as lightweight strings.  They are less memory
# intensive because they have less methods than strings do.

p :name
p :name.class
p :name.methods.length
p "name".methods.length
puts

# Standard way to use symbols as Keys in Hashes
person = {:name => "Paul",
          :job => "Senior QA Analyst",
          :languages => ["Python", "Ruby"]
         }

# Shortcut way to use symbols as Keys in Hashes
# Keys are made into symbols, but syntax is like other languages (i.e. normal)
person = {name: "Paul",
          job: "Senior QA Analyst",
          languages: ["Python", "Ruby"]
         }

p person[:name]
p person[:languages][0]
