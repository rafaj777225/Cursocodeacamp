=begin
  Keys Y Values De Un Hash
  Define un método que reciba un hash de tu elección e imprima las keys y values del hash. Crea las pruebas correspondientes para este método.
  #=>"La llave del Hash es 'frecuencia' y su valor es 4"
=end


def myhash(hash)

  hash.each do |key,value|
    print "La llave del Hash es ",key," y su valor es ",value," \n"
  end

end



frequency={

  "frequency1" => 5,
  "frequency2" => 2,
  "frequency3" => 7,
  "frequency4" => 4,
  "frequency5" => 8,
}

myhash(frequency)