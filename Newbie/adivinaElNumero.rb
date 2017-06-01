=begin
Adivina El Número

Crea la clase NumberGuessingGame. Al crear una instancia de la clase (NumberGuessingGame.new) el programa asigna un número 
aleatorio entre 0 y 9, el cual deberemos adivinar después con el método guess.

El método NumberGuessingGame#guess recibe un entero y regresa:

"Too low", si el número es más pequeño que el número aleatorio que asignó el programa.
"You got it!", si el número es el mismo que el número aleatorio.
"Too high", si el número es más grande que el número aleatorio que asignó el programa.

=end

class NumberGuessingGame
  # metodo constructor 
  def initialize
    # genera un numero random con la funcio ran del 0 al valor dado
    @number=rand(9)
    # llama a ejecucion metodo menu 
  end
  # metodo que recibe el numero dado por el usuario y compara 
  def guess(user_number)
    # dando retornando condiciones
    if @number == user_number
      "You got it!"
    elsif user_number>@number
      "Too high"
    else
      "Too low" 
    end   
  end  
  # metodo menu que muestra opciones de juego
  def menu
    p "1.- Nuevo juego"
    p "2.- Salir"
    p "Ingrese la opcion deseada"
    # recibe opcion por teclado numero
    opcion=gets.chomp.to_i
    # compara opcion seleccionada
    if opcion == 1 
      p "Ingrese el numero que desee del 0 al 9" 
    # recibe numero dado por elusuario 
      numero=gets.chomp.to_i
      # llama a metodo de instancia guess y manda como 
      # parametro numero
      p guess(numero)
      # llama a metodo menu
      menu
    elsif opcion == 2
      return 0 
      # fin de condicional if
    end
    # fin de metodo menu
  end
  # fin de clase
end

# instacia un objeto llamando asi al metodo menu
game = NumberGuessingGame.new
game.menu