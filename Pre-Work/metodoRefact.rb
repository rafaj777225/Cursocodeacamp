def anagram_for(string,array)
  #arregloN=[]
  #array.each {|x|arregloN << x  if x.split('').sort.join == string.split('').sort.join}
  #arregloN 
array.select { |e| e if e.split('').sort.join == string.split('').sort.join }

end

palabra="AMOR"

arreglo=["ROMA", "RUBY", "PERA", "REMO", "ARMA", "MARO", "RAMO"]
arreglo1=["PERRO","CABRA","CABALLO","GATO","OVEJA","GALLO"]

p anagram_for(palabra,arreglo)==["ROMA","MARO", "RAMO"]
p anagram_for(palabra,arreglo1)==[]