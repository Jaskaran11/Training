#Useful for creating an array out of an enumerable and applying certain logic for each element.

def make(x)
  final_result = []
  x.times do |i|
    row_elements = []
    (i + 1).times do |j|
     row_elements << i + 1
    end
    final_result << row_elements
  end
  final_result + final_result.reverse.last(x - 1)
end

array = make(6)
p array,

  sum_lines = array.map{|line| line.sum()}
# here we used the map on array which is enumerable on each element in int
# and replacing the need to use each loop

p sum_lines