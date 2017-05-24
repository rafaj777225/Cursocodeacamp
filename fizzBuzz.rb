=begin
fizzbuzz es un juego para enseñarles a los niños divisiones donde van contando en voz alta y dependiendo de las siguientes reglas reemplazan algunos de los números por palabras.

"FizzBuzz" para múltiplos de 3 y 5
"Fizz" para múltiplos de 3
"Buzz" para múltiplos de 5
El mismo número para cualquier otro valor.
=end



def fizzbuzz(min,max)
  arreglo=[]
  x=0
  for i in min..max
    #if ve condicion por prioridad
    if i%3==0 && i%5==0
        arreglo[x]="FizzBuzz"
        x=x+1 
    elsif i%5==0
       arreglo[x]="Buzz"
      x=x+1
      elsif i%3==0
      arreglo[x]="Fizz"
      x=x+1 
    else
      arreglo[x]=i
      x=x+1
    end
  end
arreglo
end

p fizzbuzz(3, 5) #== ["Fizz", 4, "Buzz"]
p fizzbuzz(10, 15)# == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]