=begin
Actividades
Daremos un nuevo paso en nuestro juego de Gato. Ya teniendo el tablero y sabiendo crearlo ahora 
queremos crear un método que cree tableros, pero que cada vez estos sean diferentes.

Existen muchas maneras para crear este método
Crea dos implementaciones diferentes
Intenta que la segunda sea compacta, elegante y COMPRENSIBLE.

Seguramente tus métodos estan bien pero no son muy realistas,
crea un método que contenga el numeró real de "X" y "O". Cinco 
y cuatro dependiendo con cual empieces y piensa también en como 
crear una prueba que garantice que esto suceda.

      |       |
      |       |      
----------------------
      |       |
      |       |
----------------------
      |       |
      |       |
=end

def gato
  number=rand(2)
  a=[]

    if number==1
      cat=(Array.new(5) { |x| 'x' } + Array.new(4) { |y| 'o' }).sort_by {rand}  
    elsif number==0
      cat=(Array.new(4) { |x| 'x' } + Array.new(5) { |y| 'o' }).sort_by {rand}
    end
  a=[cat[0],cat[1],cat[2]]
  b=[cat[3],cat[4],cat[5]]
  c=[cat[6],cat[7],cat[8]]

  gato=[[a],[b],[c]]
  tamaño=gato.length-1


  puts " "

    for i in 0..tamaño
    print "  ",gato[0][0][i]," "
    end
    puts " " 
    p "____________"
    puts " "  
    for i in 0..tamaño
    print "  ",gato[1][0][i]," "  
    end
    puts " " 
    p "____________"
    puts " "  
    for i in 0..tamaño
    print "  ",gato[2][0][i]," "  
    end

  puts " "
  puts " "
end