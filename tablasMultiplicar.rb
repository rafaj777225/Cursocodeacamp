def multiplication_tables(numero)
    for i in 1..numero
      for a in 1..10
        print  i*a,"\t"
      end
      puts"\n"
    end  
end
p "tablas hasta el numero 5"
multiplication_tables(5)
p "tablas hasta el numero 7"
multiplication_tables(7)