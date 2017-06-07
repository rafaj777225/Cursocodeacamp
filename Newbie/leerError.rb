# Refactoriza para que solamente te quede un renglón elegante
def dummy_encrypt(string)
  # encadenamos los metodos afectando a una sola variable  que en este caso es el argumento que recibe el metodo
  # lo que hace es que recibe el string.lee de reversa el string.convierte caracteres que estan en minuscula a 
  # mayuscula y viceversda.sustituye los caracteres que esten en el parametro 
    string.reverse.swapcase.gsub(/[aeio]/,"*")
    # word_reverse = 
    # swapped_word = word_reverse.swapcase
    # encrypted_word = swapped_word.gsub(/[aeio]/,"*")
    # el return se omite porque ya esta implicitamente ya que no hay un variable despues
    #return encrypted_word
end

# # Descompón el método en tres métodos nuevos para hacer más comprensible el código
# # Lee el método y comprende que hace y que resultado regresa 

# Descompón el método en tres métodos nuevos para hacer más comprensible el código
# Lee el método y comprende que hace y que resultado regresa 

def max_letter_frequency_per_word(sentence)
    # sentence.split..map{ |w| w.count("e") }.max
    # recorre string y lo hace como array de strings y devuelve todos aquellos que su longitud sea mayor a 3 y lo asigna a una variable
    array = words_longer_than(sentence.split,3)
    # llama metodo letter y envia como argumentos el arrya anterior y la ltra e
    # el metodo letter_per_word regresa un array de numeros 
    num_array = letter_per_word(array,"e")
    # recibe el array de numeros  y retorna el numero mas largo
    numbers_larger_than(num_array)
end

def words_longer_than(array,num)
  array.select{ |word| word.length > num}
end

def letter_per_word(array,letter)
  array.map{ |w| w.count(letter) }
end

def numbers_larger_than(num_array)
  num_array.max
end

# Estas son pruebas que no debes de modificar 
# Antes y después de modificar los métodos anteriores estas lineas deben de imprimir "true"
puts dummy_encrypt("EsteEsMiPassword") == "DROWSSApImS*ETS*"

puts max_letter_frequency_per_word("entero entrar envase enviar enzima equino equipo erario erguir eriaza eriazo erigir eringe eficientemente electroencefalografía") == 5


