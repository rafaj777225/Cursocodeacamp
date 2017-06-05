
=begin

Define los métodos private y protected para calcular la edad del gato, 
así como también agrega el código que se necesita para que la prueba 
correspondiente sea true. Revisa la documentación correspondiente.

=end
#definimos la clase
class Cat
  # creamos una constante
  CAT_YEARS = 7
  # definimos el metodo constructor que recibira los atributos de cada instancia
  def initialize(ages)
  # variable de instancia
    @ages = ages
  end
  # metodo que hace la comparacion de edades 
  # la instancia katty puede llamar ambos metodos protected y private ya que esta dentro de la clase
  # en cambio como peto aunque sea una instancia ,se puede decir que esta fuera 
  # de la clase ya que esta siendo enviada como argumento de del metodo y solo puede
  # llamar a el metodo protected 
  def es_mayor_que?(otherCat)
    #compara la edad de katty con la de peto
    calculate > otherCat.calculate 
  end
  # metodo protected puede ser llamado dentro y fuera de la clase
  # Desde afuera de la clase, los métodos protected sólo actuan como métodos private.
  # Desde adentro de la clase, los métodos protected sólo son accesibles como métodos public. 
  protected
  def calculate
    # llama a un metodo privado
    calculate2
  end
#metodo privado solo puede ser llamado por instancias que estan dentro de la clase
  private
  def calculate2
    # este metodo calcula la edad de el gato
     @ages*CAT_YEARS
  end
end

#test
katty = Cat.new(2)
peto = Cat.new(4)

p katty.es_mayor_que?(peto) == false
#=>true
