=begin

Keys De Un Hash

Define un método que reciba un hash de tu elección y regrese únicamente las keys del hash. Para este ejercicio utiliza una variante del método each. Crea una prueba para el método.

=end


def hashElect(myhash)
  arr=[]
  myhash.each_key {|key| arr<<key }
  arr
end


canasta_de_frutas={
  "Manzanas"  =>  "rojas",
  "Uvas"      =>  "verdes",
  "Cerezas"   =>  "americanas",
}

p hashElect(canasta_de_frutas)==["Manzanas", "Uvas", "Cerezas"]