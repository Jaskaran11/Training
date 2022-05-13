# Write a function that takes an integer (less than 1000) and return an array of primes till that number.

def fun(num)
  max_product = num[0]
  for i in 0...num.size
    product = 1
    for j in i...num.size
      product *= num[j]
      product > max_product && max_product = product
      end
    end
  print "\n", max_product, "\n"
  max_product
end
num = [2, 3, -2, 4]
fun(num)