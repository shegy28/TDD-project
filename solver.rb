class Solver
    def factorial(n)
      raise ArgumentError, "Argument must be non-negative" if n < 0
  
      result = 1
      (1..n).each { |i| result *= i }
      result
    end

    def reverse(word)
        word.reverse
    end

    def fizzbuzz(num)
      if num % 3 == 0 && num % 5 == 0
        "fizzbuzz"
      elsif num % 3 == 0
        "fizz"
      elsif num % 5 == 0
        "buzz"
      else
        num.to_s
      end
    end
    
  end