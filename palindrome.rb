require 'rspec'

# Palindrome takes in an array, compares the first and last letter
# and then recursively calls itself
def palindrome(word)

  # If you reach the middle then the word is a palindrome
  if(word.length <=1)
    return "It is a palindrome"
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
    return "It is not a palindrome"
  end
end

# CLI
puts "Enter a word: "
word = gets.strip

# Call palindrome function with user input
puts palindrome(word.split('').select do |el| 
  el != ' '
end)

describe 'Palindrome' do
  it 'recognizes when a word is a palindorome' do
    expect(palindrome("racecar".split('').select do |el|
      el != ' '
    end)).to eq("It is a palindrome")
    expect(palindrome("RAcE caR".split('').select do |el|
      el != ' '
    end)).to eq("It is a palindrome")
  end

  it 'recognizes when a word is not a palindrome' do
    expect(palindrome("dog".split('').select do |el|
      el != ' '
    end)).to eq("It is not a palindrome")
    expect(palindrome("horse".split('').select do |el|
      el != ' '
    end)).to eq("It is not a palindrome")
  end
end