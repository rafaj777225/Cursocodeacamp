
=begin
Crea la clase "Computer" y agrega un método que permita 
solamente ver y no modificar el procesador de la computadora.

#test
mac.processor
#=>"Intel"
mac.processor = "AMD"
#=>...undefined method `processor='...
=end

class Computer

  attr_reader :processor

    def initialize(processor)
      @processor = processor
    end

end
#  envio un argumento desde la instancia
mac = Computer.new("Intel")
#metodo de instancia getter
p mac.processor
#metodo setter que no se puede ejecutar ya que no esta declarado como tal ya que no es un metodo de lectura/escritura
p mac.processor = "AMD"