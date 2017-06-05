# Usa la herencia para refactorizar el siguiente código...
#superclase
class Animal
# metodo de instancia 
	def speak
		"Hello!"
	end

end
# clases hijas
class Dog < Animal 
  
end
class Cat < Animal
 
end
#instancias
drako = Dog.new
peto = Cat.new
# test
p drako.speak == "Hello!"          
p peto.speak == "Hello!"           
