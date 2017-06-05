# Crea los siguientes métodos dentro de la clase Rectangle:
#clase 
class Rectangle
	#metodos getters y setter
  attr_accessor :width, :height
  # metodo constructor que recibira los argumentos del objeto
  def initialize(width, height)
  	#variables de instancia
    @width = width
    @height = height
  end
  #metodos de instancia
  def area
 	@width*@height
  end

  def perimeter
  	2*(@width+@height)
  end	
  def diagonal
  	Math.sqrt(@width**2+@height**2)
  end
  def square?
	@width == @height
  end		
end

# Rectangle#area, regresa el área del rectángulo.
# Rectangle#perimeter, regresa el perímetro del rectángulo.
# Rectangle#diagonal, regresa el tamaño de la diagonal del rectángulo como Float.
# Rectangle#square?, regresa true si el rectángulo es un cuadrado.

# Pruebas
#instancia
rectangle = Rectangle.new(20, 10)
puts rectangle.area == 200
puts rectangle.perimeter == 60
puts rectangle.diagonal == 22.360679774997898
puts rectangle.square? == false
#instancia
rectangle2 = Rectangle.new(10, 10)
puts rectangle2.area == 100
puts rectangle2.perimeter == 40
puts rectangle2.diagonal == 14.142135623730951
puts rectangle2.square? == true