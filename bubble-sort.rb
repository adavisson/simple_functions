def bub_sort (array)
  n = array.length()
  i = 0

  while i < n do
    j = 0
    while j < n-i-1 do
      if array[j] > array[j+1]
        temp = array[j]
        array[j] = array[j+1]
        array[j+1] = temp
      end
      j += 1
    end
    i += 1
  end
end

#CLI
puts "Enter a number: "
length = gets.strip

#Initialize array and counter
rand_array = []
i = 0

#Fill array with random numbers
until i >= length.to_i do
  rand_array.push(rand(10000))
  i += 1
end

#Output unsorted array
#puts rand_array
puts "Sorting..."

#start timer
t1 = Time.now

#Sort array
bub_sort(rand_array)

#End timer
t2 = Time.now

#Output sorted array and elapsed time in seconds
puts "Sorted \n"
#puts rand_array
puts "Elapsed Time: #{t2 - t1} seconds"