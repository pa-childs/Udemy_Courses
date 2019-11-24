# Monkey patching is used to add in customized functionality to already existing
# Classes

class Array

  def sum

    total = 0

    self.each { |element| total += element if element.is_a?(Numeric) }

    return total

  end

end

p [1, 2, 3, 4, 5, "six"].sum
puts

class String

  def alphabet_sum

    alphabet = ("a".."z").to_a
    sum = 0

    self.downcase.each_char do |character|

      if alphabet.include?(character)

        numeric_value = alphabet.index(character) + 1
        sum += numeric_value

      end

    end

    return sum

  end

end

puts "abc".alphabet_sum
puts "zzz".alphabet_sum
puts "hello world".alphabet_sum
puts "HELLO WORLD".alphabet_sum
