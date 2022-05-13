# Write a function which takes an integer (positive) and return an array of factorials of each index in index position
# till given number.

def fact(num)
  x = 1
  (1..num).each { |i| x *= i }
  puts "Factorial of the #{num} is #{x}"
end

def a_fact(arr)
  arr.each { |a| fact(a) }
end

arr = [1, 2, 3, 4, 5]
a_fact(arr)
