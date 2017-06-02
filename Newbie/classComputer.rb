=begin
Crea la clase Computer y agrega un método para cambiar y ver el 
color de la computadora.

#test
mac.color = "Platinum"
p mac.color
#=>"Platinum"
=end

#crea clase Computer
class Computer
  #metodo de objeto para modificar o leer atributos
  attr_accessor :color
  #metodo constructor
  def initialize(color)
      #variable de instancia
      @color=color
      #fin de constructor
    end  
   # fin de clase
 end  


 mac=Computer.new("red")
#metodo setter envia o asigna un nuevo valor al objeto 
mac.color = "Platinum"
#metodo getter ya q ue solo lee la variable
p mac.color