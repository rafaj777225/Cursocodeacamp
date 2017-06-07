=begin

Crea las siguientes clases: Animal, Dog, Turtle, Macaw, Fish, Dolphin, Reptile, Cat, Whale, Snake, Mammal, Bird. El objetivo de este ejercicio es relacionar 
todas estas clases con herencia, de tal manera de colocar los comportamientos correctos en las clases correctas.

Define un comportamiento común que pueda ser heredado por todas las clases. 
Crea una constante en las clases Dog, Turtle, Macaw, Fish, Dolphin, Cat, Whale y Snake 
que guarde información de estas clases y las diferencie de las demás. 
Al final muestra la información de estas constantes a través de comportamientos definidos de cada clase.

Hay que crear las pruebas correspondientes. Recuerda que las pruebas deben regresar true.

=end
#superclase
class Animal
  
  def eat
     "comen"
  end

  def sleep
     "duermen"
  end      
end
#clases padre
class Mammal < Animal
  def warm_blooded?
      "I´m warm_blooded"
  end
end


class Reptile < Animal
  def has_scales?
     "Trepador"
  end
end

class Bird < Mammal
  def fly 
   "Puedo volar"  
  end
end
#clases hijas
class Dog < Mammal
  SOUND = "guaf.....guaf !!"
    def ladra
       SOUND
    end  

end

class Turtle < Reptile
  WALK = "camina lento"
    def lento
       WALK
    end
end

class Macaw < Bird
  HABLAR = "Puedo hablar"
    def hablar
      HABLAR
    end
end

class Fish < Mammal
  NADAR = "Se nadar "
  def swim
     NADAR
  end

end

class Dolphin < Mammal
  INTEL = "inteligente"
def inteligente
   INTEL 
end

end

class Cat < Mammal
  SOUND = 'Miaaaaaaaaaaau'
  def meow
    SOUND
  end
end

class Whale < Mammal
  EAT = "Fish"
  def eatFish
    EAT
  end
end

class Snake < Reptile
 POISON = "poison"
  def poison
    POISON
  end
end
#instancias de clase
mammal=Mammal.new
reptile=Reptile.new
dog=Dog.new 
turtle=Turtle.new 
macaw=Macaw.new 
fish=Fish.new 
dolphin=Dolphin.new 
cat=Cat.new 
whale=Whale.new  
snake=Snake.new 


p snake.eat == "comen"
p snake.has_scales? == "Trepador"
p fish.sleep == "duermen"
p dog.warm_blooded? ==  "I´m warm_blooded"
p dog.ladra ==  "guaf.....guaf !!"