=begin

Crea las variables name y age y asígnales valores. Imprime "Welcome" si el nombre asignado a la variable name es tu mismo nombre y además 
el usuario es mayor de edad, para cualquier otro nombre y edad imprime "No eres Mayor de Edad".

=end

name="Rafael" 
age=10

mi_nombre="Rafael"

if(name==mi_nombre && age>18)
  puts "Welcome"
elsif (name!=mi_nombre && age>18) 
  puts"Eres mayor de edad pero no es tu nombre"
elsif (name==mi_nombre && age<18)
  puts "No eres mayor de edad"
elsif (name !=mi_nombre && age<18)
  puts "Error"
end
