#99 ELEFANTES
puts "ingrese el numero de elefantes que desean columpiarse"
limite =gets.chomp.to_i
for elefante in 1 .. limite
    if elefante == 1
      print elefante,"elefante se columpiaba sobre la tela de una araña, como veía que resistía fue a llamar a otro elefante."
    elsif elefante == limite
      p "El ultimo elefante ya no pudo llamar a otro elefante porque la telaraña se rompio"
    else  
    print elefante," elefantes se columpiaban sobre la tela de una araña, como veían que resistía fueron a llamar a otro elefante.\n"
    end        
end