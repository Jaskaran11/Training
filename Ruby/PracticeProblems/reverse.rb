puts "Enter a string"
string = gets.chomp 

temp = ''

for i in 1..string.length
  temp += string[string.length - i]
end

puts "The reverse of #{string} is: #{temp}"