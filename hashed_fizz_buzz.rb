def hashed_fizz_buzz(limit)
  fizz_buzz_obj = Hash.new

  1.upto(limit).each do |x|
    if (x % 3 == 0) && (x % 5 == 0)
      fizz_buzz_obj[x] = "FizzBuzz"
    elsif x % 3 == 0
      fizz_buzz_obj[x] = "Fizz"
    elsif x % 5 == 0
      fizz_buzz_obj[x] = "Buzz"
    else
      fizz_buzz_obj[x] = x
    end
  end

  puts fizz_buzz_obj
end

puts "Enter a number: "
limit = gets.strip

hashed_fizz_buzz(limit.to_i)