
def average(array)
suma=0
  numeroElementos=array.length
    array.each do |x|
      suma=suma+x  
    end
promedio=suma.to_f/numeroElementos
end

p average([8, 8, 7, 6, 9]) == 7.6
p average([5, 5, 5, 8, 8, 7, 7, 7]) == 6.5
p average([5, 5, 5, 8, 8, 7, 7, 2]) == 5.875




