=begin

Crea el método total_between_age que recibe como parámetros:

Un Array con edades
Edad mínima (min_age)
Edad máxima (max_age)
Y regresa cuantas personas del Array tienen edad entre min_age y max_age.

=end
#inicio de metodo recibiendo 3 parametros 
def total_between_age(array,min_age,max_age)
  #variable contador con valor inicial 0
cont=0
#ciclo para recorrer el array 
  array.each do |x|
    #contador incrementa si x cumple con la condicion
    if x>=min_age  &&  x<=max_age
      cont+=1
      #fin if
    end
    #fin each
  end
  #retorna cont
  cont
end

# Pruebas
p total_between_age([10, 20, 30, 40, 50, 60], 20, 40) == 3
p total_between_age([18, 19, 20, 23, 24, 27], 20, 27) == 4