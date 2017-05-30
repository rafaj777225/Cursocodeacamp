numero = 3
unless numero 
   puts "El numero no existe"
else
   puts "El numero es 3"
end

i = 20
loop do
  i -= 1
  print "#{i}\n"
  #condición para romper el loop
  break if i <= 0
end

n= 20
loop do
  n -= 1
  #se usa next para saltar si número es impar.
  next if n % 2 == 1
  #con el uso de next se imprimen sólo números pares.
  print "#{n}"
  break if n <= 0
end


array = [1,2,3,4,5]

array.each do |x|
  x += 10
  puts "#{x}"
end
