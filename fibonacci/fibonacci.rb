def fibonacci(number)
  return number if number < 2

  fibonacci_1 = fibonacci(number - 1)
  fibonacci_2 = fibonacci(number - 2)

  fibonacci(number - 1) + fibonacci(number - 2)
end

input = gets.chomp.to_i
result = fibonacci(input)

print result