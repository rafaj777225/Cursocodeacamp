# Define un método que reciba un hash de tu elección y regrese únicamente los valores del hash. Para este ejercicio utiliza una 
#variante del método each. Crea una prueba para el método.


def hashElect(myhash)
  arr=[]


  myhash.each_value {|value| arr<<value }

  arr
  
end


canasta_de_frutas={
  "Manzanas"  =>  "rojas",
  "Uvas"      =>  "verdes",
  "Cerezas"   =>  "americanas",
}

p hashElect(canasta_de_frutas)==["rojas", "verdes", "americanas"]