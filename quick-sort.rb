def partition (arr, low, high)
  pivot = arr[high]
  i = low - 1
  j = low

  while j < high do
    if arr[j] < pivot
      i += 1

      temp = arr[i]
      arr[i] = arr[j]
      arr[j] = temp
    end
    j += 1
  end

  temp = arr[i+1]
  arr[i+1] = arr[high]
  arr[high] = temp

  return i + 1
end

def sort (arr, low, high)
  if low < high
    pi = partition(arr, low, high)

    sort(arr, low, pi - 1)
    sort(arr, pi + 1, high)
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
sort(rand_array,0,rand_array.length() - 1)

#End timer
t2 = Time.now

#Output sorted array and elapsed time in seconds
puts "Sorted \n"
#puts rand_array
puts "Elapsed Time: #{t2 - t1} seconds"