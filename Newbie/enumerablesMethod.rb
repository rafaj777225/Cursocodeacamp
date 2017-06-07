#Regresa un arreglo con los Strings en las posiciones 1, 3, 5, 7, etc.def odd_indexed(string)
def odd_indexed(arr)
  
newA = []
# item es el valor y index 
arr.each_with_index{|item,index|  newA <<item if index%2 == 0 } 
newA
end  
p odd_indexed(["uno", "dos", "tres", "cuatro", "cinco"]) == ["uno", "tres", "cinco"]
# Regresa todos los Strings que tienen una longitud mayor a 4 caracteres.
# def long_strings(string)
def long_strings(arr)
  arr.select { |color| color.length>4}
  
end
  
p long_strings(["rojo", "morado", "azul", "negro", "blanco", "naranja"]) == ["morado", "negro", "blanco", "naranja"]

# # Regresa el primer String que empieza con la letra 'h'.
# def start_with_h(arr)

def start_with_h(arr)
    # detect recorre el array y detecta si la palabra incluye h
  arr.detect { |word| word.include?("h")}
end
      
p start_with_h(["manzana", "naranja", "sandia", "higo", "melon", "platano"]) == "higo"

# Regresa el mismo Array de String que recibe pero ahora todos los Strings tienen la primera letra mayúscula.

def capitalize_array(arr)
  # map recorre el estring y luego con el metodo nativo capitalize convierte la primera letra de la cadena en mayuscula
  arr.map {|string| string.capitalize}
end
p capitalize_array(["manuel", "juan", "rodrigo", "ana", "paola"]) == ["Manuel", "Juan", "Rodrigo", "Ana", "Paola"]

# Regresa un Hash donde las keys son las primeras letras de los Strings y los values son todos los Strings que empiezan con esa letra.

def group_by_starting_letter(arr)
  # recorre el array y agrupa el hash con respecto a al condicion en donde con .char lo ordena por la primera letra de la cadena
  arr.group_by{|i|  i.chr  }
  
end

p group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco"])== {"a"=>["arbol", "amarillo", "angel"], "b"=>["burro", "barco"]}

# Regresa el número de letras 'r' que tiene un string.
def number_of_r(str)
  # .count "" cuenta el numero de argumentos en especifico que hay en una cadena
str.count "r"
end

p number_of_r("ferrocarril") == 4


