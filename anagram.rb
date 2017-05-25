#PSEUDOCODIGO
=begin

"Anagram"


INICIO
inicioMetodo canolical(arg)
     
     ENTRADA word1
     ENTRADA word2
     convierte string a arrays y los ordena alfabeticamente
     word1.split('').sort.join
     word2.split('').sort.join

finMetodo

ENTRADA  string word1,string word2

ESCRIBIR"Ingrese la 1 palabra"
LEE word1

ESCRIBIR "Ingrese la 2 palabra"
LEE word2
    
PASA word1 y word2 como argumento a metodo are_anagrams?

  inicioMetodo are_anagrams?(arg1,arg2)
      
      Si canolical(arg1)==canolical(arg2)ENTONCES
        ESCRIBIR true
      SI NO
        ESCRIBIR true 
      FIN SI   
  
  finMetodo    

FIN    

=end

def canolical(palabra)
#convierte string a array y ordena las letras alfabeticamente
  palabra.split('').sort.join
end

def are_anagrams?(txt1,txt2)
    canolical(txt1)==canolical(txt2)
end


#p "Ingrese una palabra"
#texto1=gets.chomp
#p "Ingrese una palabra"
#texto2=gets.chomp

#p are_anagrams?(texto1,texto2)

  #pruebas
p are_anagrams?("amor","roma")==true #se igualo a true para que el valor diera true ya que ambos son anagramas 
p are_anagrams?("voz","clima")==true #se igualo a true para que diera false ya que ambos no son anagramas






