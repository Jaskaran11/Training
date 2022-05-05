# Factorize a Number

puts 'Enter the number'
num = gets.chomp.to_i
i = 1
factorial = 1
while i <= num
  factorial *= i
  i += 1
end
puts "the factorial of #{num} is #{factorial}"
