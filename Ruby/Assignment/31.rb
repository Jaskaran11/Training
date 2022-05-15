
# 31. Given an array of integers nums and an integer target, return indices of the two numbers such that they 
# add up to target. You may assume that each input would have exactly one solution, and you may not use 
# the same element twice. You can return the answer in any order.

class Sum
  def sum_target(array, target)
    hash = {}
    (0...array.size).each { |index| hash[array[index]] = index}
    print hash
    (0...array.size).each { |index| 
        if hash[target - array[index]] && hash[target - array[index]] != index
          return [index, hash[target - array[index]]] 
        end
      }
  end
end

max = Sum.new
arr = [1, 2, 3, 4, 5, 6]
target = 11
print max.sum_target(arr, target), "\n"
