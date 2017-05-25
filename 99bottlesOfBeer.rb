#99 bottles of beer
p "Numero de cervezas"
ncervezas=gets.chomp.to_i
beer=ncervezas

while beer >0 
  if beer == 1
      print beer,"bottle of beer \n"
  else  
      print beer," bottles of beer \n"
  end
  beer=beer-1    
end   