# 28 Given an array of integers nums, return the number of good pairs.
# A pair (i, j) is called good if nums[i] == nums[j] and i < j.

def good_pair(arr)
  arr_uniq = arr.uniq
  occ = []
  good_pairs = 0
  arr_uniq.each { |a| occ << arr.count(a) }
  occ.each { |a| good_pairs += (a * (a - 1)) / 2 }
  good_pairs
end

arr = [2, 3, 4, 5, 4]
p good_pair(arr)
