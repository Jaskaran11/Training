#Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.

module Non_repeating_char
  def Non_repeating_char.first_non_repeating_char(string)
    string.chars.uniq.sort.each { |char| 
      return string.index(char) if string.count(char) == 1
    }
    return -1
  end
end

string = 'aassddffedddf'
print Non_repeating_char.first_non_repeating_char(string), "\n"