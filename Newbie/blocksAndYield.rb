=begin

  Ejercicio - Block & Prime
Define el método prime que acepte un parámetro y
 use yield para llamar a un bloque. 
El bloque debe regresar los primeros diez números
primos en un arreglo.
=end
#libreria standart
require "prime"
#inicia la funcion prime y recibe como parametro un numero 
def prime(number)
#ejecuta el bloque que llama la funcion yield dentro del codigo  recibiendo el parametro number
yield number  # => [2, 3, 5, 7, 11]
#finaliza cuerpo de metodo
end
#declaramos una variable con valor inicial 
numero=10
#llamamos al metodo prime pasando por parametro un array y a yield el bloque de codigo que se ejecutara dentro del  mismo metodo
p prime(numero) { |x| Prime.first x} == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
  
