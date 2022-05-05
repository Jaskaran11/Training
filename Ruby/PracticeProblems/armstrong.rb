# Armstrong number

puts 'Enter the number'
num = gets.chomp.to_i
temp = num
sum = 0
while num != 0
  rem = num % 10
  num /= 10
  sum += rem * rem * rem
end
if temp == sum
  puts "#{temp} is Armstrong"
else
  puts "#{temp} is not Armstrong"
end
