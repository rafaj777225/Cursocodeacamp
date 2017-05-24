def shortest(arreglo)
  nArray=[]
  conteo=arreglo.map { |e| e.length }
  orden=conteo.sort
   arreglo.each do |x|
      if orden.first==x.length
        nArray<<x
    
      end
    end    
    nArray
    
end
p shortest(['uno', 'dos', 'tres', 'cuatro', 'cinco']) == ["uno", "dos"]
p shortest(['gato', 'perro', 'elefante', 'jirafa']) == ["gato"]
p shortest(['verde', 'rojo', 'negro', 'morado']) == ["rojo"]

