=begin
		Fíjate en las siguientes clases, trata de relacionarlas y crea
		los métodos para hacer pasar el driver code.
		Pon antención en el método que te pedimos en la clase 'Vehicle' 
		el cual hará uso de la "Self keyword" que vimos anteriormente.
=end
# Superclse con metodos generales que todo vehiculo tiene
class Vehicle
	# metodos getter, se colocarn asi ya que no es necesario manipular los atributos del objeto
  	#metodos que se crean heredados
  	attr_reader :number_of_wheels, :number_of_gears, :color
  	#constrctor para cachar los atributos directamente dados en la instancia
  	def initialize(age="current")
  		@age=age
  	end
  	#metodos que seran heredados
 	 def what_am_i?
		"#{self}"
  	end
  	def age
  		@age
  	end	
  	def age=(new_age)
  		@age=new_age
  	end
 end
# clases hijas
# estas clase heredao los metodos de instancia de la clase padre llamada vehicle
class Motorized < Vehicle
	attr_reader :has_motor, :tank_size, :refuel
end
# clase hija  que hereda de motorized que es una subclase
class Motorbike < Motorized

end

# clases hijas heredan de la subclase y la superclase
class Car < Motorized

end

class Bicycle < Vehicle

end

class Skateboard < Vehicle

end
# instancias
moto = Motorbike.new
car = Car.new
# instancia que envia un argumento 
bike = Bicycle.new("8")
skateboard = Skateboard.new
# array de objetos 
vehicles = [moto, car,bike,skateboard]

# recorre el array de instancias
vehicles.each do |vehicle|
	#por cada objeto manda a llamar un metodo llamado age
  vehicle.age
# drivercode
  puts "#{vehicle.what_am_i?} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
  puts "\n\n"
end