def fib (n)
  if (n === 0)
    return 0
  elsif (n <= 2)
    return 1
  else
    return fib(n-1) + fib(n-2)
  end
end

#Get user input
puts "Enter A number: "
nth = gets.strip

t1 = Time.now
#Call fib function
result = fib(nth.to_i)
t2 = Time.now

#Output result
puts result
puts "Elapsed time: #{t2 - t1} seconds."