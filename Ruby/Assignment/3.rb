# reverse only vowels in the string and return it.

def reverse_vowels(str)
  vowels = str.scan(/[aeiou]/i)
  str.gsub(/[aeiou]/i) { vowels.pop }
end

puts reverse_vowels('hello')
