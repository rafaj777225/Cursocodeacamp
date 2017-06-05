=begin
Métodos Private, Public y Protected
Un método public puede ser invocado por cualquiera que conoce ya sea el nombre de la clase o el nombre del objeto. 
Los métodos son public por defecto, excepto el método initialize que es privado.

El método private solo se puede invocar desde el contexto del objeto actual. 
No se pueden invocar métodos private de otros objetos aunque sean de la misma clase. 
Para definir un método privado se usa la palabra reservada private en el programa.

=end

class Cat
  CAT_YEARS = 7
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age 
  end

  def cat_years
    @age * CAT_YEARS
  end
  private
  def human_years 
    @age / CAT_YEARS
  end
end

katty = Cat.new("Katty", 2)
p katty.cat_years == 14
#=>true
p katty.human_years
#=>...private method `human_years' called for #<Cat:0x872727c @name="Katty", @age=14> (NoMethodError)

