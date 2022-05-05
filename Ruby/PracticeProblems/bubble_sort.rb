# program for bubble sort

def bubble_sort(arr)
  i = 0
  until i == arr.length
    for j in 0...arr.length-i-1
     if arr[j] > arr[j+1]
       temp = arr[j + 1]
       arr[j + 1] = arr[j]
       arr[j] = temp
     end
      end
    i += 1
  end
  arr
end

arr = [15, 99, 10, 5, 9, 72, 0]
sorted_array = bubble_sort(arr)
print sorted_array, "\n"