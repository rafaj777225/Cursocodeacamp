=begin
Torre |Caballo Alfil Reina Rey Alfil Caballo Torre
      |
peon  | peon    peon  peon  peon  peon  peon  peon
      |
      |
      |
peon  |peon    peon  peon  peon  peon  peon  peon
      |
Torre |Caballo Alfil Reina Rey Alfil Caballo Torre
=end

def ajedrez
piezas=[[" Torre "," Caballo "," Alfil "," Reina "," Rey "," Alfil "," Caballo "," Torre "],["Peon "]]
limit=piezas[0].length-1
  for j in 0..limit
    print "|",piezas[0][j].center(10),"B |"
  end
  puts " "

  for i in 0..limit
    print "|",piezas[1][0].center(10),"B |"
  end
  puts " "
  for i in 1..4
    for i in 0..limit
      print "|","/////".center(10),"  |"
    end  
  puts " "
  end 

  for i in 0..limit
    print "|",piezas[1][0].center(10),"N |"
  end
  puts " "

  for j in 0..limit
    print "|",piezas[0][j].center(10),"N |"
  end
  puts " "

end

ajedrez
















# for i in 0..limit
#   print piezas[0][i],"-B","  |  " 
# end
# puts "\n\n"
# puts "-----------------------------------------------------------------------------------------------------------------------"


# puts "\n\n"
# for i in 0..limit
#   print piezas[0][i],"-B","  |  " 
# end
# puts "\n\n"