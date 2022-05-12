# a function that takes an array of strings and integers, and filters out the array so that it returns an array of integers only.

def fun(arr)
  arr.select { |element| element.is_a?(Integer) } 
end

a = [1, 2, 'a', 'b']
p fun(a)
