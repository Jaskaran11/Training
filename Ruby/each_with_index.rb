=begin
Similar to each_with_object but it is also taking index with value
useful when, in addition to iterating over an enumerable
you also need to use the index.For example,
what if we need to log the current index we're processing
=end

def handle(nums)
  nums.each_with_index do |num, i|
    puts ("Handling item #{num}/#{i}/#{nums.count}")
  end
end

arr = [1, 4, 9, 16, 25, 36, 49]
print handle(arr)