=begin

Crea la clase Person que recibe como argumentos la fecha de nacimiento y el nombre de la persona.

Define el método age y que este metodo llame otro método que se encargara de calcular la edad de la persona. 
Es necesario usar un método nativo de ruby que te ayude a obtener el año actual.
Al llamar el metodo de instancia years_old, este nos arrojara, private method `years_old'...(NoMethodError) 
trata de comprender porque sale ese mensaje  
=end
 
# definimos la clase Person 
class Person
  #  creamos una varible de clase que guarde el valor de el año actual sacado por el metodo nativo
@@time = Time.new
# metodo constructor que recibe los atributos de cada instancia
  def initialize (person,birthdate)
    # variables de instancia
    @person = person
    @birthdate = birthdate
  end
protected
  def age
    # llama a metodo privado years_old y lo interpola 
    # "#{@person} is #{years_old} years old."
    years_old
  end 
  #metodo privado
  private
  def years_old
    # calcula la edad de la persona con la diferencia del año actula menos el año de nacimiento
    @@time.year - @birthdate   
  end
end  
#intancias con sus atributos
carlos = Person.new('Carlos',1987)
martha = Person.new('Martha',1991)
#test
p carlos.age# == "Carlos is 30 years old."
#=>true
p martha.age# == "Martha is 26 years old."
#=>true

p carlos.years_old

  