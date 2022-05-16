# 39. Given two unsorted arrays A of size N and B of size M of distinct elements, the task is to find all pairs from
# both arrays whose sum is equal to X.
class Target_sum
  def self.sum_target(array_a, array_b, target)
    hash = {}
    arr_2d = []
    (0...array_b.size).each { |index| hash[array_b[index]] = index }
    (0...array_a.size).each { |index|
      if hash[target - array_a[index]]
        arr_2d << [array_a[index], target - array_a[index]]
      end
    }
    p arr_2d, "\n"
  end
end

arr1 = [1, 2, 3, 7, 5, 4, 6]
arr2 = [0, 7, 4, 3, 2, 1, 5]
x = 9
Target_sum.sum_target(arr1, arr2, x)