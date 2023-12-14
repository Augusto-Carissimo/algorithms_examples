def fibonacci_sequence(n)
  i = 2
  while i <= n
    fibo << (fibo[i-1] + fibo[i-2])
    i += 1
  end
  return fibo[n]
end
