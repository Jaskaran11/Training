#  function which takes year and returns how many Saturday 14ths there are in a given year. 

def sat(int)
  count = 0
  (1..12).each do |i|
    time = Time.new(int, i, 14)
    if time.saturday?
      count += 1
    end
  end
  puts "Number of Saturdays on 14th date in #{int} year is #{count}"
end

puts 'Enter the year'
year = gets.to_i
sat(year)
