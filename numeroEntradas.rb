
def user
  cont=0
  loop do
    puts "Ingrese cualquier frase"
    texto=gets.chomp
    break if texto=="Ya"
    cont+=1  
  end  
  puts"El numero de entradas fue",cont
end

user







