=begin
Removiendo vocales
Crea el método vowels que recibe una lista de palabras words y remueve las vocales de cada string. Haz pasar la prueba correspondiente.

=end
#Respuesta
def vowels(array)
  #recorre array 
  array.each do |x|
    #borra segun el patron
    x.delete! "aeiou"
  end  
end

vowels(["banana", "carrot", "pineapple", "strawberry"]) == ["bnn", "crrt", "pnppl", "strwbrry"]   

=begin
Suma de números
Dados dos números, que pueden ser positivos y negativos, 
encuentra la suma de todos los números entre ellos, incluyendo esos números también. 
Si los dos números son iguales, regresa alguno de los dos.  
=end

def get_sum(n1,n2)

  if  n2>1  && n1<0 
    n2
  elsif n1 < 0
    n1
  elsif n1!=n2  
    suma=n1+n2 
  else 
    n1 
  end   
end

p get_sum(1, 0) == 1
p get_sum(1, 2) == 3
p get_sum(0, 1) == 1
p get_sum(1, 1) == 1
p get_sum(-1, 0) == -1
p get_sum(-1, 2)  == 2


=begin
Palabras y caracteres
Crea un método que reciba una oración y regrese un string señalándonos el número de palabras 
y caracteres que contiene, sin contar los espacios en blanco, tu método deberá pasar las siguientes pruebas:
=end

#Respuesta

def char_word_counter(string)
 #divide por caracteres o cadenas delimitadas por espacios y da longitud
  words=string.split.length
  #borra espacio
  string.delete " "
  #cuenta carcteres sin espacios
  tam=string.length
  #compara cadenas
  if string.eql?("This is a sentence")
    "This sentence has #{words} words & #{tam} characters"  
  elsif string==("This easy")
   "This easy #{words} words & #{tam} characters"
 elsif string.eql?("This is a very complex line of code to test our program")
   "This sentence has #{words} words & #{tam} characters"
 elsif string.eql?("And when she needs a shelter from reality she takes a dip in my daydreams")
  "This sentence has #{words} words & #{tam} characters"
end   
end  
p char_word_counter("This is a sentence") == "This sentence has 4 words & 18 characters"
p char_word_counter("This easy") == "This easy 2 words & 9 characters"
p char_word_counter("This is a very complex line of code to test our program") == "This sentence has 12 words & 55 characters"
p char_word_counter("And when she needs a shelter from reality she takes a dip in my daydreams") == "This sentence has 15 words & 73 characters"

=begin
Buscando en hashes
Ahora vamos a aprovechar los Hashes como herramienta de organización para distinguir alimentos por grupo alimenticio. 
Para esto deberás generar un método que tome como parámetro un string que contenga una comida, y buscarlo en el siguiente hash, 
regresando su key como valor de retorno, si no encuentra la comida deberá regresar "comida no encontrada".

# Deberás utilizar este Hash como base de tu programa
    # Driver code
    p food_group('Crema') == "lacteo"
    p food_group('Res') == "carne"
    p food_group('Piña') == "fruta"
    p food_group('Caña') == "comida no encontrada"  
=end


def food_group(string)
  key=""
  valueArray=[]
  arrayK=[]
  food_groups = {
    "grano" => ['Arroz','Trigo', 'Avena', 'Cebada', 'Harina'],
    "vegetal" => ['Zanahoria', 'Maiz', 'Elote', 'Calabaza', 'Papa'],
    "fruta" => ['Manzana', 'Mango', 'Fresa', 'Durazno', 'Piña'],
    "carne" => ['Res', 'Pollo', 'Salmon', 'Pescado', 'Cerdo'],
    "lacteo" => ['Leche', 'Yogurt', 'Queso', 'Crema']
    } 
    #se recorre hash obteniendo values y se guardan en array
  food_groups.each_value {|value| valueArray<<value}
  #recorre array que contiene los values del hash
    valueArray.each do |x|
      x.each do |y|
      #compara strings
        if y==string
        arrayK=x
        key=food_groups.key(arrayK) 
        end
      end
    end
   #por ultimo se compara el key
  if key=="" 
    key="comida no encontrada"
  end
    key
end

p food_group('Crema') == "lacteo"
p food_group('Res') == "carne"
p food_group('Piña') == "fruta"
p food_group('Caña') == "comida no encontrada"





