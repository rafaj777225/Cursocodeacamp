require "benchmark"
def fibonacci_recursive(numberLimit)
  return  numberLimit  if numberLimit <= 1 
  fibonacci_recursive(numberLimit- 1 ) + fibonacci_recursive(numberLimit- 2 )
end

p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
p fibonacci_recursive(5) == 5
puts Benchmark.measure { "a"*1000 }