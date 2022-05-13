# 21 Write a function that takes an integer (less than 1000) and return an array of primes till that number.

def prime(num)
  i = 2
  count = 0
  if num == 2
    return 2
  end

  loop do
    if (num % i).zero?
      count = 1
    end
    i += 1
    break if i == (num)
  end

  return unless count.zero?

  num
end

def prime_array(num)
  prime_arr = []
  (2..num).each { |a| prime_arr << prime(a);}
  prime_arr.compact
end

print 'Enter no below which prime number is to be found : '
no = gets.to_i
print prime_array(no), "\n"