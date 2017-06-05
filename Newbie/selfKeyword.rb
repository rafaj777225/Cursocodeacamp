#Self tiene el valor del metodo principal que es main

puts "self es igual a: #{self}"

class DummyClass
  puts "Esto esta corriendo cuando se define la clase"
  puts "En este contexto self es igual a: #{self}"
end
# self iene el equivalente al nombre de la clase pero encripta su posicicion
class DummyClass

    def intance_method
        puts "Dentro de un método de instancia"
        puts "En este contexto self es igual a: #{self}"
    end
end

dummy_class = DummyClass.new()
puts dummy_class.intance_method

#  tiene el equivalente a el nombre de la clase   ya que tiene un metodo de clase 

class DummyClass

    def self.class_method
            puts "Dentro de un método de clase"
        puts "En este contexto self es igual a: #{self}"
    end
end

dummy_class = DummyClass.new()
puts DummyClass.class_method 

#self retorna la ubicacion de donde se ejecuto la linea 
#en el segundo caso manda el nombre del objeto
#en el ultimo caso  coo esta en un metodo de calse retorna el nombre de la clase