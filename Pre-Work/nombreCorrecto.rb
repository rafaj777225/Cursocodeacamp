#Ejercicio - Nombre Correcto
#Corrige el siguiente código para que imprima el mensaje "nombre correcto":

first_name = "Rogelio"
first_name.upcase!
last_name = "manzano"
last_name.capitalize!
mensaje = "Nombre Correcto"
mensaje.downcase!
puts mensaje if first_name == "ROGELIO" && last_name == "Manzano"
