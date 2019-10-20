numbers = [1, 2, 3 , 4, "Not a Number", 5, 6, nil,  7, 8]

numbers.each do |number|

  unless number.is_a?(Integer)

    next

  else

    puts "The square of #{number} is #{number ** 2}"

  end

end
