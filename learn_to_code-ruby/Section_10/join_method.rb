names = ["Milo", "Penny", "Cameron", "Carol Anne", "Ferb"]

p names.join(", ")

def custom_join(array, delimiter = "")

  string = ""

  array.each do |element|

    unless array[-1] == element

      string += element + delimiter

    else

      string += element

    end

  end

  return string

end

p custom_join(names, "-")
p custom_join(names, ", ")
