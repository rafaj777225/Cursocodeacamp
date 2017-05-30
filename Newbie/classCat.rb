=begin
Crea una clase Cat que permita crear objetos Cat con diferentes nombres
y que le permita al gato realizar las siguientes acciones: meow, run y jump. 
Haz pasar la pruebas correspondientes.

#test



=end


class Cat
# declaramos el metodo initialize como metodo constructor 
# se crea el metodo construtor para declarar los atributos 
# de una clase que afectaran a los objetos
  def initialize(string)
    # declaramos una variable de metodo que se puede ser accedida en todos los metodos
    # sintaxis de variables de metodo
    @name=string
    # @variable_name
    @add=0
  end
  # metodos de clase son declarados con la palabra resrvada self.variable_name
  def self.meow
    "Miau... Miau..."
  end
  # metodos de instancia son declaradso como cualquier metodo
  def jump
    "Saltando..."
  end  
  # pueden o no tener recibir parametros
  def run(distance=0)
    # una variable de metodo puede ocuparse en todos los metodos 
    @add+=distance
    "Corriendo #{@add} mts..."
  end 
  # fin de la clase
end

cat_1=Cat.new("garfield")
cat_3=Cat.new("catty")
cat_5=Cat.new("polo")


p Cat.meow == "Miau... Miau..."


p cat_1.jump == "Saltando..."
p cat_5.jump == "Saltando..."
p cat_3.run == "Corriendo 0 mts..."
p cat_3.run(20) == "Corriendo 20 mts..."
p cat_3.run(10) == "Corriendo 30 mts..."
p cat_3.run(10) == "Corriendo 40 mts..."

# dependiendo del objeto son los cambios que obtienen los atributos
