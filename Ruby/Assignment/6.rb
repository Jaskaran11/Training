# Given a String S, reverse the string without reversing its individual words. Words are separated by dots.

word = 'This is a full sentence.'
word = word.split(' ').reverse!.join(" ")
puts word
