=begin
*    Crea la variable canasta_de_frutas e inicialízala a un Hash con 3 nombres de frutas con una cantidad correspondiente.
=end


canasta_de_frutas={
  "Manzanas"  =>  3,
  "Uvas"      =>  5,
  "Cerezas"   =>  7,
}

key=0
canasta_de_frutas.each do |key , value|
   print key ," => ",  value,"\n"  
end