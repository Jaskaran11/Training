# Given the parameter day, month and year, return whether date is a valid date.

require 'date'

def valid_date(day, month, year)
  Date.strptime("#{day} #{month} #{year}", '%d %m %Y')
    rescue Exception => e
    puts e.message
    false
    else
      puts 'Correct Date'
end

puts 'Enter the date to see if its a valid date\n Day :'
day = gets
puts ' Month : '
month = gets
puts ' Year : '
year = gets

valid_date(day, month, year)
