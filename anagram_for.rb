"ANAGRAM_FOR"
INICIO

ENTRADA string arreglo,
ENTRADA array arreglo1


  inicioMetodo anagram_for(string ,array)
      ENTRADA array var=EMPTY
      PARA x con valor de 0 hasta array.tamaño-1 con INCREMENTO +1
   #     convierte string a arrays y los ordena alfabeticamente
          SI array[x].split('').sort.join==string.split('').sort.join ENTONCES
          guardar valor de x en nuevo array
                var<<x
          fin SI
      finPARA
  finMetodo

FIN

arreglo=["ROMA", "RUBY", "PERA", "REMO", "ARMA", "MARO", "RAMO"]
arreglo1=["PERRO","CABRA","CABALLO","GATO","OVEJA","GALLO"]

def anagram_for(string,array)
arregloN=[]
    array.each do |x|
      if x.split('').sort.join == string.split('').sort.join
        arregloN<<x
      end
    end 
    arregloN 
end

palabra="AMOR"


p anagram_for(palabra,arreglo)==["ROMA","MARO", "RAMO"]
p anagram_for(palabra,arreglo1)==[]