# Create a function that takes an array of numbers and returns a new array containing only prime numbers.

def prime?(num)
  x = 0
  (2...num).each { |i|
    if (num % i).zero?
      x += 1
    end
  }
  return unless x.zero?

  num
end

def prime_no(arr)
  prime = []
  arr.each { |a| prime << prime?(a) }
  prime.compact
end

arr = [2, 4, 7, 9, 11, 13, 71, 97, 120, 159]
print prime_no(arr), "\n"
