# include Math
# def dudeney_number?(number)

# end

# Pruebas

# p dudeney_number?(1) == true
# p dudeney_number?(125) == false
# p dudeney_number?(512) == true
# p dudeney_number?(1728) == false
# p dudeney_number?(5832) == true
# define metodo 
def dudeney_number?(numero)
# hacemos paso por valor del argumento 
s = numero	
# convertimos integer a string para separar los digitos
newNumber = s.to_s
# separamos los digitos del string
newNumber.split('')
# tamanio del string 
tamanio = newNumber.length
# si numero es iguala 1 se asigna a number
	if numero == 1
		number = 1
# y si tamanio del argumento es de 3 cifras 		
	elsif tamanio == 3
# asignamos el valor por posicion
		a = newNumber[0]
		b = newNumber[1]
		c = newNumber[2]
		#convertimos de string a integer cada una de las asignaciones las sumamos y asi determinaremo el cubo perfecto
	number = a.to_i + b.to_i + c.to_i 
# si es de 4 cifras el argumento se hace lo mismo pero con 4 cifras 
	elsif tamanio == 4
		a = newNumber[0]
		b = newNumber[1]
		c = newNumber[2]		
		d = newNumber[3]
	number = a.to_i + b.to_i + c.to_i + d.to_i
	end
# se eleva al cubo el numero base
	cubo =(number*number*number)
# si cubo es igual valor del argumento regresa true diciendo que es un numero dudeney 
	if cubo == numero
		r = true
	else
		r = false
	end	
# retorno
	r
end
#drivercode			
p dudeney_number?(1) == true
p dudeney_number?(125) == false
p dudeney_number?(512) == true
p dudeney_number?(1_728) == false
p dudeney_number?(5_832) == true