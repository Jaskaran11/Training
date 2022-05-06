# RUby program to print multiplication table of a number

puts 'Enter the number:'
num = gets.chomp.to_i

(1..10).each do |i|
  mult = num * i
  puts "#{num} * #{i} = #{mult}"
end
