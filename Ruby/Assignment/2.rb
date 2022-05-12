# Write a function to return reverse of a string using recursion.

def reverse_recursive(str)
  return str if str.length <= 1

  last = str[-1]
  rest = str[0...-1]
  rest = reverse_recursive(rest)
  last + rest
end

puts(reverse_recursive('hello'))
