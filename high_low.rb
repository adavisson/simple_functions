def high_low
  answer = rand 25

  puts "Guess a number between 0 and 24"

  loop do
    num = gets.chomp.to_i

    if num == answer
      puts "You are correct"
      break
    elsif num < answer
      puts "Too Low. Try Again."
    elsif num > answer
      puts "Too High. Try Again"
    end
  end
end

high_low