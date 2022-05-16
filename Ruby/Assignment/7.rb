#  Given two strings s and t, return true if t is an anagram of s, and false otherwise. 

def anagram?(s, t)
  downcase_and_sort(s) == downcase_and_sort(t)
end

def downcase_and_sort(s)
  s.downcase.split('').sort.join
end

s = 'silent'
t = 'listen'
p anagram?(s, t)