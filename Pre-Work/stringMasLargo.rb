def longest(arreglo)
  nArray=[]
  conteo=arreglo.map { |e| e.length }
  orden=conteo.sort
   arreglo.each do |x|
      if orden.last==x.length
        nArray<<x
      end
    end    
    nArray
end


# Pruebas
p longest(['tres', 'pez', 'alerta', 'cuatro', 'tesla', 'tropas', 'siete']) == ["alerta", "cuatro", "tropas"]
p longest(['gato', 'perro', 'elefante', 'jirafa']) == ["elefante"]
p longest(['verde', 'rojo', 'negro', 'morado']) == ["morado"]