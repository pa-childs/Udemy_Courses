def fizzbuzz(integer)
  # iterate from 1 to the number that is passed in
  # if the number is divisible by 3, output Fizz
  # if the number is divisible by 5 output Buzz
  # if the number is divisible by BOTH, output FizzBuzz

  loop = 1

  while loop < integer +1

    if loop % 3 == 0 && loop % 5 == 0

      puts "#{loop} is FizzBuzz"

    elsif loop % 3 == 0 

      puts "#{loop} is Fizz"

    elsif loop % 5 == 0

      puts "#{loop} is Buzz"

    end

    loop += 1

  end

end

fizzbuzz(25)