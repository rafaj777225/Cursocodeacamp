=begin
  *    A la variable canasta_de_frutas del ejercicio anterior agrégale una fruta más con su cantidad correspondiente.

=end


canasta_de_frutas={
  "Manzanas"  =>  3,
  "Uvas"      =>  5,
  "Cerezas"   =>  7,
}

p "Hash canasta_de_frutas original"
canasta_de_frutas.each do |key , value|
   print  key ," => ",  value,"\n"  
end

canasta_de_frutas["Nectarinas"]=14

p"Hash canasta_de_frutas agregando un valor mas"

canasta_de_frutas.each do |key , value|
   print key ," => ",  value,"\n"  
end
