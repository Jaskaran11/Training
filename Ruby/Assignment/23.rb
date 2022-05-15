# Given an array nums. We define a running sum of an array as running Sum[i] = sum( nums[0]...nums[i]). 
#Return the running sum of nums. 

def running_sum(arr)
  running_sum = []
  running_sum << arr[0]
  (1...arr.size).each { |a| running_sum << arr[0..a].sum }
  running_sum
end

arr = [30, 31, 32, 34, 35, 36, 37, 40]
p running_sum(arr)