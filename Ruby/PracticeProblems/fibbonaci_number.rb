# Fibonacci number sum

def fibonacci(count)
  if count <= 1
    count
  else
    fibonacci(count - 1) + fibonacci(count -2)
  end
end

puts fibonacci(10)
