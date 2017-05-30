=begin
Clase People

Crea la clase People que permita crear tres objetos People con diferentes nombres. Haz pasar las pruebas correspondientes.

#test
p people_1.speak == "Rodrigo is talking to you..."
p people_2.speak == "Carlos is talking to you..."
p people_3.speak == "Rodrigo is talking to you..."
=end

# se crea la clase people
class People
# se crea el metodo constructor  
  def initialize(name)
 # atributos de la clase que afectan al objeto o instancia   
    @name=name
  end  
  # metodo de instancia
  def speak
    "#{@name} is talking to you..."  
  end  
end
#instanciamos 3 objetos con sus respectivos argumentos
people_1=People.new("Rodrigo")
people_2=People.new("Carlos")
people_3=People.new("Rodrigo")

p people_1.speak == "Rodrigo is talking to you..."
p people_2.speak == "Carlos is talking to you..."
p people_3.speak == "Rodrigo is talking to you..."