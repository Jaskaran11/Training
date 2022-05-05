# To check the given number is prime or not

puts 'Enter the number:'
num = gets.chomp.to_i
count = 0
if num.zero?
  puts '0 is not a prime number'
else
  i = 2
  while i < num
    if (num % i).zero?
      count += 1
    end
    i += 1
  end
end
if count > 1
  puts "#{num} is not a prime number"
else
  puts "#{num} is a prime number"
end
