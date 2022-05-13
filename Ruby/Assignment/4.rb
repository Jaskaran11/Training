# Given a n-digit large number in form of string check whether divisible by 7 or not.

def divisible_by_seven?(num)
  remainder = num % 7
  if remainder.zero?
    return true
  else
    return false
  end
end

puts "Is 28 Divisible by 7 ? #{divisible_by_seven?(28)}"
puts "Is 90 Divisible by 7 ? #{divisible_by_seven?(90)}"
