# Program to swap two numbers without using third variable
module SWAP
  class Swap
    def swap_numbers
    a = 3
    b = 6
    puts("The value of a before swap is: #{a}")
    puts("The value of b before swap is: #{b}")
    a += b
    b = a - b
    a -= b
    puts("The value of a after swap is: #{a}")
    puts("The value of b after swap is: #{b}")
    end
  end
end

obj = Swap.new
obj.swap_numbers
