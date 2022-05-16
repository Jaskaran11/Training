# 10. Given a string s and an array of strings words, determine whether s is a prefix string of words. 
# A string s is a prefix string of words if s can be made by concatenating the first k strings in words for some 
# positive k no larger than words.length. Return true if s is a prefix string of words, or false otherwise.

def is_prefix(str, word)
  joined = ''
  i = 0
  while i < word.size
    joined << word[i]
    if str == joined 
      return true
    end

    i += 1
  end
  false
end

s = 'hellothere'
word = ['hello', 'there', 'how', 'are']
p is_prefix(s, word)
