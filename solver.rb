class Solver
    def factorial(n)
      raise ArgumentError, "Argument must be non-negative" if n < 0
  
      result = 1
      (1..n).each { |i| result *= i }
      result
    end
  end