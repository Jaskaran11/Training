# Ruby program to check if a number is palindrome 

puts 'Enter the number'
num = gets.chomp.to_i
temp = num
sum = 0
while num != 0
  rem = num % 10
  num /= 10
  sum = sum * 10 + rem
end
if temp == sum
  puts "The #{temp} is a palindrome"
else
  puts "The #{temp} is not a palindrome"
end
