def fibonacci(n)
  memo = { 0 => 0, 1 => 1 }

  (2..n).each do |i|
    memo[i] = memo[i - 1] + memo[i - 2]
  end

  memo[n]
end

input = gets.chomp.to_i
puts fibonacci(input)
