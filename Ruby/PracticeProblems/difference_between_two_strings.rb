# Program to find difference between two strings

def diff(s, t)
  counter = 0
  length = s.length
  while counter < length
    item = s[counter]
    score_s = s.count(item)
    score_t = t.count(item)

    return item unless score_s == score_t
  end
  return t[-1]
end
