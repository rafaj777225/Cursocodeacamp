=begin
  
Crea el método factorial que recibe como parámetro un entero positivo y regresa el factorial.
El factorial es la multiplicación de todos los enteros desde 1 hasta el número.
factorial(6) = 1 * 2 * 3 * 4 * 5 * 6 = 720
  
=end
#incio de metodo que recibe como parametro un int 
def factorial(pnumber)
(1..pnumber).inject(1) {|product, n| product=product * n } 
end
p factorial(6)== 720