=begin
  Actividades
  Escribe un programa llamado diccionary_sort que pida al usuario capturar las palabras que quiera (una palabra por línea) y para finalizar la captura tenga que presionar "enter".

  Deberás utilizar un array para guardar las palabras.

  Una vez que el usuario presiona "enter" el programa deberá arrojar la lista de palabras en orden alfabético.

  Pregúntate: 
  Que pasará si el usuario captura un número o un string vacío. Como puedes solucionarlo.

  Vamos a elevar la dificultad.
  Modifica el programa para que ignore el orden si el usuario capturó las palabras en mayúsculas o minúsculas, pero al enlistarlas deberá mantener su formato.
=end


def diccionary_sort
  arreglo=[]
  palabra="x"
  loop do
    p "ingrese una palabra"
    palabra=gets.chomp
        # if the word is equal to number then say something
        if  /\d/.match(palabra)
          p "Caracter no valido"
        end 
        #if the word is different than string nill and while is character arreglo saves palabra
        if palabra!="" && /\D/.match(palabra)
         arreglo<<palabra  
       end
       #loop break when string is nill
       break if palabra==""
     end

     puts arreglo.sort_by {|x| x.downcase}
   end


   diccionary_sort

