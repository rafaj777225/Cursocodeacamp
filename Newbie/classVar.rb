=begin
Variables De Clase

Agrega una variable de clase a la superclase Vehicle que pueda darle seguimiento al número de objetos creados que heredan de la superclase. 
También crea un método que imprima el valor de esta variable de clase.

=end
# clase
class Vehicle
# variable de clase inicializada en 1, esta variable como es de clase esta en un metodo de clase 
# va a cambiar su valor en las clases hijas
@@var_class = 1
  def self.number_of_vehicles
  	"This Superclass has created #{@@var_class} vehicles"
  end	
end
#clase hija
class Car < Vehicle
# variable que es heredad de la clase padre incrementada en 1
@@var_class=@@var_class+1
end

class Bus < Vehicle
@@var_class=@@var_class+1
end

#test
# instancias
car_1 = Car.new
car_2 = Car.new
bus_1 = Bus.new
# clase llamando a un metodo de clase
p Car.number_of_vehicles == "This Superclass has created 3 vehicles"
