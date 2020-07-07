require 'rspec'

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

  fizz_buzz_obj
end

def user_interaction
  puts "Enter a number: "
  limit = gets.strip
  puts hashed_fizz_buzz(limit.to_i)
end

user_interaction

#Tests

describe "Hashed Fizz Buzz" do
 it "produces the correct has for '25'" do
  completed_hash = {1=>1, 2=>2, 3=>"Fizz", 4=>4, 5=>"Buzz", 6=>"Fizz", 7=>7, 8=>8, 9=>"Fizz", 10=>"Buzz", 11=>11, 12=>"Fizz", 13=>13, 14=>14, 15=>"FizzBuzz", 16=>16, 17=>17, 18=>"Fizz", 19=>19, 20=>"Buzz", 21=>"Fizz", 22=>22, 23=>23, 24=>"Fizz", 25=>"Buzz"}
  expect(hashed_fizz_buzz(25)).to eq(completed_hash)
 end
end
