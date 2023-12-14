class FibonacciSequence
  @@cache = {}

  def self.fibonacci_sequence(n)
    if n <= 1
      n
    elsif @@cache[n-1] && @@cache[n-2]
      @@cache[n-1] + @@cache[n-2]
    else
      @@cache[n-1] = fibonacci_sequence(n-1)
      @@cache[n-2] = fibonacci_sequence(n-2)
      @@cache[n-1] + @@cache[n-2]
    end
  end
end
