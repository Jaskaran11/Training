=begin
    11.You are given an array of strings nums and an 
    integer k. Each string in nums represents an integer without leading zeros. 
    Return the string that represents the kth largest integer in nums. 
    Note: Duplicate numbers should be counted distinctly. For example, if nums is ["1","2","2"], "2" is the first 
    largest integer, "2" is the second-largest integer, and "1" is the third-largest integer.
=end

def kth_num(nums, k)
  arr = []
  nums.each { |str| arr << str.to_i }
  arr.sort! { |a, b| b <=> a }
  return arr[k - 1].to_s
end

nums = ['1', '2', '2']
k = 1
p kth_num(nums, k)

