# Create a function that takes an array of numbers and returns a new array containing only prime numbers.
def is_prime(num)
  x = 0
  (2...num).each { |i|
    if (num % i).zero?
      x += 1
      end
    }
    return unless x.zero?

    num
    end

  def only_prime(array)
    prime = []
    array.each { |a| prime << is_prime(a) }
    prime.compact
  end
  
    array = [1, 2, 3, 4, 5, 6, 7, 20, 25, 40, 45, 48, 60, 90, 93, 97]
    print only_prime(array) , "\n" 