# Given an integer array nums, move all the even integers at the beginning of the array followed by all the odd integers. Return any array that satisfies this condition.

def even_then_odd(arr)
  transformed_arr = []
  (0...arr.size).each { |a| if arr[a].even? then transformed_arr << arr[a] end }
  (0...arr.size).each { |a| if arr[a].odd? then transformed_arr << arr[a] end }  
  transformed_arr
end

array = [1, 43, 54, 234, 546, 1231, 3244]
print even_then_odd(array), "\n"
 