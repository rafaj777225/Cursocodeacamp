#¿Qué modificarías del código anterior 
#para imprimir una tabla como se muestra en la prueba?

#test
#=>
# ------------Time started----------
# Start time: 2016-06-17 20:14:46 -0500

# "Average is: 7.6"

# End time: 2016-06-17 20:14:46 -0500
# -------------Time finished--------
# Result: 0.000142 seconds



#declaramos un array con valores 
grades=[7,8,4,5,9,10]
#variable que guarda el tamaño del array
count = grades.length
#método para calcular el promedio de calificaciones
def average_grade(grades)
#variable que guarda la hora y fehcha del sistema 
t1 = Time.now
#impresiones en pantall
p "------------Time started----------"
puts "Start time  #{t1}"
#yield que toma el valor del parametro de la funcion
  yield grades
#variable que guarda la hora y fecha del sistema despues de ser ejecutado el yield  
t2= Time.now
#imprime ne pantalla el avalor asignado a t2 
puts "End time: #{t2}"
#reasignacion para calcular el tiempo multpilicado en por mil para que quede en terminos de milisegundos
t2=(t2-t1)*1000 
#impresion en pantalla de t2
puts "-------------Time finished--------"
puts "Result: #{t2} seconds"
end
#manda a llamar a metodo average_grades pasando como parametro un array y  enviando el bloque de codigo de yield que se ejecutara en el mismo metodo
#metodo inject es como un for pero agregandole el tipo de operacion
average_grade(grades){|average| print " Average is: ",average.inject {|sum, n| (sum + n)}/count.to_f,"\n"}

