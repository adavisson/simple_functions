# Palindrome takes in an array, compares the first and last letter
# and then recursively calls itself
def palindrome(word)

  # If you reach the middle then the word is a palindrome
  if(word.length <=1)
    puts "It is a palindrome"
    return
  end

  # Get the first and last letter of array
  #first = word.shift()
  #last = word.pop()
  first, *rest, last = word

  # If first and last match then call again
  # If not, then break
  if (first.downcase == last.downcase)
    palindrome(rest)
  else
    puts "It is not a palindrome"
    return
  end
end

# CLI
puts "Enter a word: "
word = gets.strip

# Call palindrome function with user input
palindrome(word.split('').select do |el| 
  el != ' '
end)