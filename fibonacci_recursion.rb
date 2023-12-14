def fibonacci_sequence(n)
  if n <= 1
    n
  else
    fibonacci_sequence(n - 1) + fibonacci_sequence(n - 2)
  end
end

p fibonacci_sequence(10)