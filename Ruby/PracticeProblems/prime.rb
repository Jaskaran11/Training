def check_if_prime(number)
  counter1 = 0
  if number.zero?
    puts "0 is not a prime number"
  else
    counter2 = 2
    while counter2 < number
      if (number % counter2).zero?
        counter1 += 1
      end
      counter2 += 1
    end
  end
  if counter1 > 1
    puts "#{number} is not a prime number"
  else
    puts "#{number} is a prime number"
  end
end

p check_if_prime(3)
p check_if_prime(8)
