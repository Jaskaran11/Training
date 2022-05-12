# a function that takes an array of strings and integers, and filters out the array so that it returns an array of integers only.

a = [1, 2, 'a', 'b']
puts(a.select { |element| element.is_a?(Integer) })
