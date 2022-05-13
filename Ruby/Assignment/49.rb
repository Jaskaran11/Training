# The 2nd of February 2020 is a palindromic date in both dd/mm/yyyy and mm/dd/yyyy format 
# (02/02/2020). Given a date in dd/mm/yyyy format, return true if the date is palindromic in both date 
# formats, otherwise return false 
require 'date'

def palindrome?(date)
  return true if date == date.reverse

  return false
end

def date_palindrome?(date)
  date = Date.strptime(date, '%d/%m/%Y')
  counter = 0
  date_string = date.strftime('%d%m%Y')
  !palindrome?(date_string) && counter += 1

  date_string = date.strftime('%m%d%Y')

  !palindrome?(date_string) && counter += 1

  if counter.positive?
    print "Not a palindrome \n"
  else
    print "It is a palindrome \n"
  end
end

print 'Enter the date to find if it is palindrome : '
date = gets
date_palindrome?(date)
