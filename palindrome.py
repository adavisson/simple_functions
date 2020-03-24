def palindrome(word):
  if len(word) <= 1:
    return("It is a palindrome")
  
  first = word.pop(0)
  last = word.pop()

  if first == last:
    return palindrome(word)
  else:
    return("It is not a palindorme")

print("Enter a word")
word = input()

result = palindrome(list(word))
print(result)