=begin
Crea el método leap_year? que recibe como parámetro un año, y regresa true o false si el año es o no bisiesto.

# Pruebas

p leap_year?(1900) == false
p leap_year?(1988) == true
p leap_year?(1989) == false
p leap_year?(1992) == true
p leap_year?(2000) == true
p leap_year?(2001) == false
p leap_year?(1600) == true  
p leap_year?(1704) == true

=end
#incio de metodo leap_year? recibiendo como parametro el año
def leap_year?(year)
  #variable que almacena un valor booleano si se cumple lo sig
  #si el modulo  de año, resultado de la division entre 4 es igual a cero y estrictamente 
  #si el modulo  de año, resultado de la division entre 100 es diferente de 0
  #si cumple en ambos casos es true
  #si el modulo  de año, resultado de la division entre 400 es de 0 
  #siguiendo tablas de verdad retornara un valor booleano
    is_leap_year = (year % 4 == 0  &&  year % 100 != 0 )|| year % 400 == 0
end
#test
p leap_year?(1900) == false
p leap_year?(1988) == true
p leap_year?(1989) == false
p leap_year?(1992) == true
p leap_year?(2000) == true
p leap_year?(2001) == false
p leap_year?(1600) == true  
p leap_year?(1704) == true