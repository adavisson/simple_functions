def palindrome(word)
  if(word.length <=1)
    puts "It is a palindrome"
    return
  end

  first = word.shift()
  last = word.pop()

  if (first == last)
    palindrome(word)
  else
    puts "It is not a palindrome"
    return
  end
end

puts "Enter a word: "

word = gets.strip

palindrome(word.split(''))