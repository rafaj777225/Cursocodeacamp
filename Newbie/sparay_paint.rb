=begin
Crea el método spray_paint que pueda ser llamado sobre una instancia y modifique el color de la puerta. Haz pasar la prueba.

#test
p big_door.spray_paint('yellow') == "The Yellow door looks great!"
=end

#clase  
class Puerta
    #metodo constructor
    def initialize(color)
      #variable local
      @color=color
    end   
    #metodo de instancia
    def spray_paint(color)
      #variable de instancia que recibe valor dede la instancia
      @color = color
      #string de retorno con valor en interpolacion
      "The #{@color} door looks great!"
    end

end
#instancia de metodo
big_door = Puerta.new('Red')
# modificador sobre la instancia
p big_door.spray_paint('Yellow')# == "The Yellow door looks great!"

