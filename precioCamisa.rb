=begin

            Ejercicio - Precio de la Camisa
            Encuentra el precio de la camisa del hash catalogo_tienda del ejercicio anterior. Fíjate en el tipo de dato de la clave del hash.

=end
#precioCamisa obteniendo valores y claves en un hash
catalogo_tienda={

  "camisa" => 5,
  "playera" => 3,
  "short" => 7,
  "pantalón" => 2
}

print "El precio de la camisa es: $" ,catalogo_tienda["camisa"],"\n"