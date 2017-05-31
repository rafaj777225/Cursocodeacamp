require "benchmark"

def fibonacci_iterative(numberLimit)
  first=0
  second=1
    for i in 0..numberLimit
      if i<=1
        sig =i
      else
        sig=first+second
        first=second
        second=sig 
      end
    end  
  sig
end  

p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(2) == 1
p fibonacci_iterative(3) == 2
p fibonacci_iterative(4) == 3
p fibonacci_iterative(5) == 5

puts Benchmark.measure { "a"*1_000_000 }
