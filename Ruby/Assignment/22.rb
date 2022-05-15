# 22.Given an integer array nums and an integer k, return the number of pairs (i, j) where i < j such that 
# |nums[i] - nums[j]| == k. 
# The value of |x| is defined as:
# x if x >= 0. 
# -x if x < 0.

def pair_diff(num, k)
  length = num.size
  pairs = 0
  for i in (0...length)
    for j in (i...length)
      if (num[i] - num[j]).abs == k
        pairs += 1
      end
        end
    end
  print pairs , " \n"
end

num = [3, 1, 5, 7, 9, 10, 12]
k = 2
pair_diff(num, k)