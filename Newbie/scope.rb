$global_var = "This is a global variable"
CONSTANT = 3.1416 

local_var= "this is my local var"
	def return_my_local_Var
		local_var="this is my local method var"
	end
=begin
la primera variable no se logra imprimir ya que no esta definida en el metodo
se puede ocupar en todo el cuerpo del prograa pero no dentro del metodo , a enos que se le asigne un valor diferente	
=end
puts  return_my_local_Var

#Una variable de instancia no lleva nada en especial,
# solo que se crea como objeto, se instancia ese objeto y se utiliza en un método, en ese orden

class DummyClass
@@class_variable = "This is a class variable"
	
	def initialize
		@instance_var
	end
	def instance_var
		@instance_var 
	end
	def instance_var=(value)
		@instance_var = value
	end

	def class_variable
		@@class_variable
	end

	def class_variable=(value)
		@@class_variable = value
	end

	def global_var
		$global_var
	end

	def global_var=(value)
		$global_var = value 
	end

	def constant
		CONSTANT
	end
# no se puede colocar un metodo  setter ya que es una constante y no es una variable dinamica
#	def constant=(value)
#		CONSTANT
#	end
end

var = DummyClass.new

dummy_class = DummyClass.new

p dummy_class.instance_var = ("Bar")
p dummy_class.instance_var   =    "Baz"

dummy_1=DummyClass.new
dummy_2=DummyClass.new

p dummy_1.class_variable = "New value for the class variable"
p dummy_2.class_variable

def global_var=(value)
	$global_var=value
end
def global_var
	$global_var
end
def constant
	CONSTANT
end

p global_var
p constant
#p global_var('Hello')
#p constant('7')

dummy_1 = DummyClass.new

p dummy_1.global_var
p dummy_1.constant

p dummy_1.global_var=('helloseahorse')
#llamando a la variable global por edio del metodo global
p global_var