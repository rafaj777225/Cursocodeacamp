=begin 
Suma de Valores
Define una variable y asígnale un arreglo de números.
Crea una estructura de control iterativa que permita 
imprimir la suma de cada número del arreglo más 5.

=end 

arreglo=[5,8,1,4,2,7,6]
#el each funciona como el for para recorrer cada valor del array 

  arreglo.each do |z|z+=5
    p z
  end
