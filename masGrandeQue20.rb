def large(cadena)
  if(cadena.length>20)
    cadena.upcase
  end
end

p large("Hola vamos a la comida") == "HOLA VAMOS A LA COMIDA"
p large("Es hora de dormir") == "Es hora de dormir"