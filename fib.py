def fib(n):
  if n == 0:
    return 0
  elif n <= 2:
    return 1
  else:
    return fib(n-1) + fib(n-2)

print("Enter a number: ")
number = input()

result = fib(number)
print(result)