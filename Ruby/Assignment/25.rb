# 25 Given an array nums of size n, return the majority element. The majority element is the element that 
# appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

def majority_element(arr)
  arr.sort!
  arr[arr.size / 2]
end

arr = [1, 2, 4, 5, 6, 6, 6, 8, 4, 7]
print majority_element(arr), ''
