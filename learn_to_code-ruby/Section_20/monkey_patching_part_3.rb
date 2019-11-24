class Book

  def initialize(title, author, pages)

    @title = title
    @author = author
    @pages = pages

  end

end

hitchhikers = Book.new("The Hitchhiker's Guide to the Galaxy", "Douglas Adams", 215)
p hitchhikers

# even if patches are made after a Class is used, those previously created
# instances of the class can make use of the monkey patched methods
class Book

  def read

    1.step(@pages, 10) { |page| puts "Reading page #{page}..." }
    puts "Done! #{@title} was a great book."

  end

end

animal_farm = Book.new("Animal Farm", "George Orwell", 50)
p animal_farm
puts
p animal_farm.read
puts
p hitchhikers.read
