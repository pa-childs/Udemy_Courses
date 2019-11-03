number_hash = {a: 5, b: 2, c: 3, d: 5}

def value_count(hash, number)

  count = 0

  hash.each do |key, value|

    if value == number

      # puts  "Key: #{key}  Value: #{value}  Count: #{count}"
      count = count + 1

    end

  end

  return count

end


puts value_count(number_hash, 2)
puts value_count(number_hash, 3)
puts value_count(number_hash, 5)
puts value_count(number_hash, 10)
