def fizzbuzz(min,max)
  for i in min..max
    #if ve condicion por prioridad
     if i%3==0 && i%5==0
        arreglo<<"FizzBuzz"
    elsif i%5==0
       arreglo<<"Buzz"
      elsif i%3==0
      arreglo<<"Fizz"
    else
      arreglo<<i
    end
  end
arreglo
end

p fizzbuzz(3, 5) == ["Fizz", 4, "Buzz"]
p fizzbuzz(10, 15) == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"] 