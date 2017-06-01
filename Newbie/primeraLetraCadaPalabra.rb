=begin
Crea el método first_letters que recibe como parámetro una oración y regresa dentro de un array las primeras letras de cada palabra de la oración.

# Pruebas

p first_letters("Hoy es miércoles y hace sol") == ["H", "e", "m", "y", "h", "s"]
p first_letters("tienes ocho candados indios nuevos omega") == ["t", "o", "c", "i", "n", "o"]
=end

def first_letters(string)
  # array vacio
  letras=[]
  # como existe metodo destructivo se reasigna el striing ya separado
  string=string.split
  # recorre string 
  string.each do |x|
  # toma la posicion cero de cada string
    x[0]
  # se guarda la posicion 0 de cada string en un array 
    letras<<x[0]
  end
  letras
end

p first_letters("Hoy es miércoles y hace sol") == ["H", "e", "m", "y", "h", "s"]
p first_letters("tienes ocho candados indios nuevos omega") == ["t", "o", "c", "i", "n", "o"]
