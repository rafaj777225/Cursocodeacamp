=begin
Crea la clase Stair con atributos material y size. Asimismo, 
define el método larger_size_than? que permite saber si una 
escalera es más grande que otra. Es importante considerar que 
el método getter size no debe ser público, de tal manera que si 
lo tratas de usar en una instancia stair_one.size() levantará un error.

=end
# clase
class Stair
  # metodo constructor recibiendo 2 atributos como argumentos
  def initialize(material,size)
    # variables de instancia
    @material = material
    @size = size
  end
  # metodo de instancia que recibe como argumento un atributo desde la instancia
  def larger_size_than?(material)
    # comparacion entre el atributo size del objeto1 con respecto al atributo de la instancia 2
      size > material.size
  end
  # metodo protegido
  # se coloco como metodo protegio ya que puede ser llamado desde 
  # cualquier instancia
  protected
  # retorna el valor de size del primer objeto
  def size
    # atributo del objeto 1
    @size
  end  

end
#test
#instancias de la clase
metal = Stair.new("Metal", 54)
wood = Stair.new("Wood", 23)

p "Well done!" if metal.larger_size_than?(wood)