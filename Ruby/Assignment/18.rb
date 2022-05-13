# . Write a function which takes an array of integers, return how many of them contain an even number of 
# digits.

def no_even_digits(arr)
  no_of_even_digits = 0
  arr.each { |a| if a.to_s.size.even? then no_of_even_digits += 1 end }
  no_of_even_digits
end

arr = [1, 32, 5909, 324]
p no_even_digits(arr)
