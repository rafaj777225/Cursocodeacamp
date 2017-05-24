# METODOS DE RUBY STRING


cadena="hola mundo"
cadena1="HOLA A TODOS"

puts "Cadena original : #{cadena}\n"
puts"Cadena convertida :"," #{cadena}".upcase  # metodo para convertir un string en mayusculas
puts "Cadena original : #{cadena1}"
puts "Cadena convertida :"," #{cadena1}".downcase #metodo para convertir un string en minusculas
puts "\n"

#CONTADOR DE CARACTERES EN UN STRING

contador=cadena.length

puts "La cadena : #{cadena} tiene #{contador} caracteres"

#Identifcar letras por posicion
letra0=cadena[0]
letra1=cadena[9]

puts "La cadena : #{cadena}, empieza con la letra  #{letra0} y termina con la letra, #{letra1}"

#muestra el caracter en la posicion dado en el string
p cadena[2]

#asigna un nuevo valor en la posicion del string

p cadena[4]="r"

#hacer la primer letra del string en mayuscula

p cadena.capitalize

# muestra el primer caracter de la cadena

p cadena.chr

puts "La cadena : #{cadena}, empieza con la letra " , "#{cadena}".chr , " y termina con la letra, #{letra1}"

# Da la posicion del caracter en la que se encuentra el interprete

p cadena.count "hello"

# nos dice si una cadena esta vacia o no
p cadena.empty? 

# reemplaza solo el primer caracter del patron por un nuevo valor especificado
p "Rafael".SUB(/[aeiou]/,"s") 

#reemplaza todos los valores ddel patron que encuentre en la cadena por el valor especificado

p "Rafael".gsub(/[aeiou]/,'*')
#devuelve un true si hay algun caracter especificado

p cadena.include? "mu"
#Muestra la posicion del caracter a buscar y si no hay devuelve un tipo nil
p "Rafael Jordan".index('f')
p "Rafael Jordan".index('z')

# lee inversamente la cadena 

p cadena.reverse

#divide por caracteres o cadenas delimitadas por espacios
p "Rafael Jordan ".split 

#hace identacion al texto

p "      Rafael Jordan     ".strip

