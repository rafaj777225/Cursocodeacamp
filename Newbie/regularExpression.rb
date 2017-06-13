=begin

Regresa true si encuentra un numero de cuenta.
Regresa un número de cuenta si existe dentro del string y nil en el caso contrario.
Regresa un array con los números de cuenta que existen dentro del string y un array vacío en el caso contrario.
Regresa un string donde si existen números de cuenta estos tendran remplazados por "X" los primeros siete numeros. ej. "XXXX-XXX-234"
Regresa un string formateado donde cualquier número de diez dígitos seguido o si tiene puntos en vez de guiones lo regresa a su formato
original donde usa guiones para dividir los diez dígitos. Si encuentra un numero de menos dígitos no debería remplazarlo.


=end


# metodo
def metodo1(string)
  # match revisa el patron en el string si existe regresara true de lo contrario false 
  string.match(/\d{4}\-\d{3}-\d{3}/) ? true : false
end

def metodo2(string)
  # m1 guarda aquella cadena con el patron posicicionandola en posicion 0
  m1=/(\d{4})-(\d{3})-(\d{3})/.match(string)
  # regresa la cadena donde se guardo la operacion match
  !m1.nil? ? m1[0] : nil
end
def metodo3(string)
  array = []
    account =/(\d{4})-(\d{3})-(\d{3})/.match(string)
    # la cadena se guarda en un array
    array << account[0]
end
def metodo4(string)
  account =/(\d{4})-(\d{3})-(\d{3})/.match(string)
  # la cadena account posicion cero revisa si existe algun numero dentro del patron y lo sustituye con x
  account[0].gsub!(/[12345]/,'X')
end
def metodo5(string)
  # sustituye puntos por guiones
  string.gsub!(/[.]/,"-")
end
def metodo6(string)
  # revisa si esta incluido dentro de la cadena un guion si es asi devuelve invalid
  string.include?("-") ? "valid" : "Invalid"
end

p metodo1("1234-123-123") == true

p metodo2("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos") == "1234-123-123"

p metodo3("cuenta1:  cuenta2: 1234-345-789") == ["1234-345-789"]

p metodo4("cuenta1:  cuenta2: 1234-345-789") == "XXXX-XXX-789"

p metodo5("1234.567.890") == "1234-567-890"

p metodo6("123456789") == "Invalid"

