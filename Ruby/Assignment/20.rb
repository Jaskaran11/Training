# 20.  Given an unsorted array Arr of size N of positive integers. One number 'A' from set {1, 2, ...N} is missing and one number 'B' occurs twice in array. Find these two numbers.

def missing_repeat(arr)
  missing = nil
  repeat = nil
  arr_uniq = arr.uniq.sort
  a = 0
  while a < arr_uniq.size - 1
    arr_uniq[a] != arr_uniq[a + 1] - 1 && missing = arr_uniq[a] + 1 
    arr.count(arr_uniq[a]) > 1 && repeat = arr_uniq[a]
    a += 1
  end
  print 'missing number is ', missing, ' ,repeating number is ', repeat
end
arr = [90, 91, 92, 93, 94, 99, 96, 97, 98, 99, 100]
missing_repeat(arr)