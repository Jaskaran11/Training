# Given a n-digit large number in form of string check whether divisible by 7 or not.

def digit(num)
  n = num.length
  return true if n.zero? && num.charAt(0) == '0'

  if n % 3 == 1
    num = "00" + num
  if n % 3 == 2
    num = "0" + num
  n = num.length
  end
  end

  g_sum = 0, p = 1
  for i in n-1..0
  group = 0
  group += num.charAt(i--) - '0'
  group += (num.charAt(i--) - '0') * 10
  group += (num.charAt(i) - '0') * 100
  group = g_sum + g_sum - 1
  
  

  end
end

