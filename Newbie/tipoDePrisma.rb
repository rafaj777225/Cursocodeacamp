=begin

Crea el método prism_type que recibe como parámetros el tamaño de los 3 lados de un prisma.

Si todos los lados son de diferentes tamaños la figura geométrica recibe el nombre de cuboide.
Si 2 lados son del mismo tamaño: prisma rectangular.
Si los 3 lados son del mismo tamaño es un cubo.

Tu método debe regresar el nombre correcto de la figura de acuerdo a las reglas de arriba.

# Pruebas



=end
def prism_type(l1,l2,l3)
#varible de metodo
  tipo="x"
#condiciones
    if l1!=l2  && l2!=l3 && l1!=l3
      tipo="cuboide"
    elsif l1==l2  &&  l1!=l3  
      tipo="prisma rectangular"
    elsif l1==l2  &&  l1==l3
      tipo="cubo"
    end
#    retorno implicito
  tipo

end

#test
p prism_type(5, 5, 5) == "cubo"
p prism_type(5, 5, 4) == "prisma rectangular"
p prism_type(5, 4, 3) == "cuboide"
p prism_type(10, 8, 2) == "cuboide"