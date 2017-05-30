=begin
*    Crea la variable canasta_de_frutas e inicialízala a un Hash con 3 nombres de frutas con una cantidad correspondiente.
=end


canasta_de_frutas={
  "Manzanas"  =>  3,
  "Uvas"      =>  5,
  "Cerezas"   =>  7,
}  
def mode(array)
  arreglo=[]
  
  arr=array.map { |x| array.count(x)}
  max=arr.max

  array.map { |x| arreglo<<x if array.count(x)==max }
   arreglo.uniq  
end

p mode([1, 2, 2, 3]) == [2]

p mode([1, 2, 2, 3, 3, 4]) == [2, 3]
p mode([1, 2, 3]) == [1, 2, 3]
p mode([0, 1, 2, 3, 4, 0]) == [0]


key=0
canasta_de_frutas.each do |key , value|
   print key ," => ",  value,"\n"  
end