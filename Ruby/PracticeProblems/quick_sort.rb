# Ruby program for quicksort

class QuickSortExample
  def quick_sort(arr, low, high)
    return unless low < high

    pivot = partition(arr, low, high)
    quick_sort(arr, low, pivot)
    quick_sort(arr, pivot + 1, high)
  end

  def partition(arr, low, high)
    pivot = arr[low]
    i = low
    j = high

    while i < j
      while arr[i].to_i <= pivot.to_i && i < high
        i += 1
      end

      while arr[j].to_i > pivot.to_i && j > low
        j -= 1
      end

      next unless i < j

      temp = arr[i]
      arr[i] = arr[j]
      arr[j] = temp

    end

    arr[low] = arr[j]
    arr[j] = pivot

        return j
  end

  def print_array(arr)
    [0...arr.length].each do |i|
      print(arr[i].to_s + " ")
    end
    puts('')
  end
end

obj = QuickSortExample.new

arr = [15, 3, 12, 6, -9, 9, 0]
print('Before Sorting: ')
obj.print_array(arr)

obj.quick_sort(arr, 0, arr.length - 1)
print('After Sorting: ')
obj.print_array(arr)
