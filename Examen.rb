=begin
# ¿Qué tipo de datos son cada una de las siguientes variables?
# ¿De que clase es cada uno y como lo puedes comprobar?

v = 9.0
w = ["1", "f", 4]
x = 1.4
y = "3"
z = {name: "Javier", email: "mail@codea.mx", fase: 1}

=end

# ¿Qué tipo de datos son cada una de las siguientes variables?
# Respuesta

# v una variable tipo fix float
# w es un array
# x una variable tipo fix float
# y entre comillas es un string sin comillas es un integer
# z es un hash

v = 9.0
w = ["1", "f", 4]
x = 1.4
y = "3"
z = {name: "Javier", email: "mail@codea.mx", fase: 1}

# ¿De que clase es cada uno y como lo puedes comprobar?
p v.class ==  Float
p w.class ==  Array
p x.class ==  Float
p y.class ==  String
p z.class ==  Hash
=begin
# Obtén el valor del cuarto elemento de la lista `fruits` utilizando código.
 Y cambia el segundo valor de la lista por una fruta diferente.
fruits = ["apple", "orange", "peach", "pineapple", "kiwi"]
...
=end
# Respuesta

fruits = ["apple", "orange", "peach", "pineapple", "kiwi"]

p fruits[3]=="pineapple"

fruits [1]="uvas"
p fruits==["apple", "uvas", "peach", "pineapple", "kiwi"]

=begin
  
# Obtén el último elemento de la lista `sports`.
sports = ["rugby", "tennis", "soccer", "cycling", "baseball"]
... 
=end
# Respuesta
sports = ["rugby", "tennis", "soccer", "cycling", "baseball"]
p sports[4]=="baseball"

=begin
# Añade un elemento más al principio de la lista `gadgets`.
gadgets = ["smartphone", "laptop", "tablet"]
=end
# Respuesta
gadgets = ["smartphone", "laptop", "tablet"]

gadgets.unshift "android"

p gadgets== ["android", "smartphone", "laptop", "tablet"]

=begin
 Hashes
Crea la variable my_hash e inicialízala a un Hash vacío.
Crea la variable grades e inicialízala a un Hash con 3 nombres de materias con una calificación correspondiente.
A la variable grades del ejercicio anterior agrégale una materia más con su calificación correspondiente.
Lee el value de la materia con la calificación más alta de grades y asígnalo a la variable highest_grade.
   
=end
#Crea la variable my_hash e inicialízala a un Hash vacío.
#Respuesta
p my_hash=Hash.new =={}
#Crea la variable grades e inicialízala a un Hash con 3 nombres de materias con una calificación correspondiente.
#Respuesta
grades={

  "vectorial" => 9 ,
  "Programacion" => 10 ,
  "filosofia" => 7,
}
#A la variable grades del ejercicio anterior agrégale una materia más con su calificación correspondiente.
#Respuesta
grades["dibujo"] = 6
#Lee el value de la materia con la calificación más alta de grades y asígnalo a la variable highest_grade.
highest_grade=grades["vectorial"]
grades.each do |key,value|
  if highest_grade<value
    highest_grade=value
  end 
end
#Respuesta
p highest_grade == 10

=begin
Crea el método large_word que nos diga si una palabra tiene muchas letras. 
Si la palabra tiene más de 6 letras regresa el string "Large", 
y si es menor "Small".  
=end

def large_word(string)
  if string.length>6
    "Large"
  else
    "Small"
  end
end

#Respuesta
p large_word("Hola")=="Small"
p large_word("HelloWorld")=="Large"

=begin
 Crea el método print_plus_ten que reciba un arreglo de números,e imprima la suma de cada número más 10.

Crea el método plus_ten_array muy parecido al ejercicio anterior, con la diferencia que no imprime los números 
sino que regresa un nuevo arreglo con los elementos del primer array más 10. 
plus_ten_array([4,3,7]) == [14, 13, 17]
=end
def print_plus_ten(arreglo)
  arreglo.each do |x|
    x=x+10
    p x
  end  
end

def plus_ten_array(array)
  newArray=[] 
  array.each do |x|
    newArray<<x+10 
  end   
  newArray
end
#Respuesta
print_plus_ten([4,3,7]) 
#Respuesta
p plus_ten_array([4,3,7]) ==[14, 13, 17]

=begin

 Crea el método odd_or_even_plus, que recibe dos argumentos: min y max. 
 Regresa un arreglo donde si el número es par le suma 2 y si es non le suma 3 

=end

def odd_or_even_plus(min,max)
  array=[]
  for i in min..max
    if i%2==0
      array<<i+2
    else
      array<<i+3
    end
  end  
  array
end
#Respuesta
p odd_or_even_plus(3, 9) == [6, 6, 8, 8, 10, 10, 12]

