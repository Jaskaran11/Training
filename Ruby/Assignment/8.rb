# A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all 
# non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include 
# letters and numbers. Given a string s, return true if it is a palindrome, or false otherwise.

def scrub_string(str)
  str = str.to_s if !str.is_a?String
  str.gsub(/\W|\_/, '').downcase
end

def palindrome?(str)
  str = scrub_string(str)
  (str.length / 2).times do |index_counter|
    if str[index_counter] != str[-(index_counter + 1)]
      return false
    end
  end
  true
end

p palindrome?('radar')
p palindrome?('bat')