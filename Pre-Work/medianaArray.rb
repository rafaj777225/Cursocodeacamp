def median(array)

  if(array.length%2!=0)   
    
   posx=(array.length/2)
    media=array[posx]
  
  else
    pos2=array.length/2
    pos1=(array.length/2)-1
    media=(array[pos1]+array[pos2]).to_f/2
  end
  media
end
# Pruebas
p median([4, 5, 6]) == 5
p median([-3, 0, 3]) == 0
p median([2, 3, 4, 5]) == 3.5
p median([1, 8, 10]) == 8