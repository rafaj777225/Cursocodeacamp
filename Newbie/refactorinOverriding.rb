#Super clase
class SuperSay
  # metodo que recibe como parametro un string
  def say(text)
    # devuelve el string
    text
  end  
end
# clase hija
class HtmlSay < SuperSay 
  # metodo que recibe como parametro
  def say(text)
    #super extrae el return del metodo de la clase padre y lo modifica
    "<p>" + super + "</p>"
  end
end  
  #clase hija que heread todos sus metodos
class CssSay < SuperSay
end
#instancias
doc = HtmlSay.new
style = CssSay.new

#test
p doc.say("You've refactored") == "<p>You've refactored</p>"
p style.say("I like to code")  == "I like to code"
