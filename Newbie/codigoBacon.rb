=begin

Crea el método baconian_cipher que recibe un mensaje 
oculto con el código Bacon y regresa el mensaje original.

=end 

# Pruebas
require 'PP'

def baconian_cipher(message)
 mensaje = []
 diccionario = {"a"=>"AAAAA","b"=>"AAAAB","c"=>"AAABA","d"=>"AAABB","e"=>"AABAA",
                "f"=>"AABAB","g"=>"AABBA","h"=>"AABBB","i"=>"ABAAA","k"=>"ABAAB",
                "l"=>"ABABA","m"=>"ABABB","n"=>"ABBAA","o"=>"ABBAB","p"=>"ABBBA",
                "q"=>"ABBBB","r"=>"BAAAA","s"=>"BAAAB","t"=>"BAABA","v"=>"BAABB",
                "w"=>"BABAA","x"=>"BABAB","y"=>"BABBA","z"=>"BABBB"}
# separa string por formato {5} es el numero de letras por las cque hace cada separacion y lo asigna a un array
array = message.scan(/.{5}/)
  # recorre las posiciones del array
  array.each do |i|
    # se asigna a mensaje las llaves que va obteniendo del hash con hash.key(value)
     mensaje << diccionario.key(i)
  end
  # une las keys en un solo string
  mensaje.join
end
#test
p baconian_cipher("BAABAAABAAAABAABAAABABBBAAABAABAAAAABBABAAAAAABABAAAAAABAAABAAABAABAAAABBAAAAABAABBAB") == "teesperoalascinco"
p baconian_cipher("ABABAAAAAAAAABAABABAAAAAABAABBAABAAAABAABAAABAAABBABBABBAAABBAABABAAAAAABAABAAAB") == "laclaveesdostres"
