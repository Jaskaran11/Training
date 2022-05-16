# csv stands for comma separated values.It’s a common data format which consist of rows with values separated by commas. It’s used for exporting & importing data.

require 'csv'
#p CSV.read('test.csv')
#p CSV.parse('test.cv')

#CSV.foreach(('test.csv'), headers:true, col_sep: ",") do |row|
#    puts row
#end

#CSV.foreach(('test.csv'), headers:true, col_sep: ",") do |row|
#  puts row[1]
#  puts row['name']
#end

csvfile = File.new('test.csv', 'r+')
arr = []
arr = IO.readlines('test.csv',chomp: true)

# for duplicating the values
for i in 0...arr.size
    arr << arr[i].split(',')
end

p arr, "\n"