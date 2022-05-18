=begin   
useful for creating an object by iterating over an enumerable.
For example, what if we wanted to produce a hash from array
or a person object from a given hash
unlike map,you can add ifs to the block and choose which elements to run the logic on
=end

def b_hash(nums)
  # it receives the object to start with ({}) and accumulates on top of it
  nums.each_with_object({}) { |num, res| res[num] = num }
end

# works with any kind of object
def b_array(nums)
  nums.each_with_object([]) { |num, res| res << (num) }
end

nums = [1, 5, 6, 8, 19, 3]
p b_hash(nums)
p b_array(nums)