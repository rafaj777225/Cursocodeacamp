=begin

  Crea una estructura de control condicional que permita identificar e imprimir la etapa de desarrollo 
  en que se encuentra una persona con cierta edad. Toma en cuenta la siguiente tabla:

       Edad                Etapa 
----------------- | -------------------
0  - 6            |   "Infancia"
6  - 12           |   "Niñez"
12 - 20           |   "Adolescencia"
20 - 25           |   "Juventud"
25 - 60           |   "Adultez"
60 - adelante     |   "Ancianidad"
----------------- | -------------------

=end




edad= 20

case edad
when 0..6
  puts "Infancia"
when 7..12
  puts "Niñez"
when 13..20
  puts "Adolescencia"
when 21..25
  puts "Juventud"
when 26..60
  puts "Adultez"
else 
  puts "Ancianidad"
end

