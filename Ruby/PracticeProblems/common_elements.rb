# A function that takes two list of number and return an array which are common to both array

def common_elements(arr1, arr2)
  combined = arr1 + arr2
  unique = combined.uniq.sort

  both = []

  counter = 0
  length = unique.length

  while counter < length
    item = unique[counter]
    if arr1.include?(item) && arr2.include?(item)
      both.push(item)
    end
  end
end
