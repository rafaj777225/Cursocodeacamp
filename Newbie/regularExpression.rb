=begin

Regresa true si encuentra un numero de cuenta.
Regresa un número de cuenta si existe dentro del string y nil en el caso contrario.
Regresa un array con los números de cuenta que existen dentro del string y un array vacío en el caso contrario.
Regresa un string donde si existen números de cuenta estos tendran remplazados por "X" los primeros siete numeros. ej. "XXXX-XXX-234"
Regresa un string formateado donde cualquier número de diez dígitos seguido o si tiene puntos en vez de guiones lo regresa a su formato
original donde usa guiones para dividir los diez dígitos. Si encuentra un numero de menos dígitos no debería remplazarlo.


=end



def number_Account(string)
  string.match(/\d{4}\-\d{3}-\d{3}/) ? true : false
end

def number_account(string)
  account = []
    if string.match(/\d{1}\-\d{2}-\d{2}/) 
     (string.match(/\d{1}\-\d{2}-\d{2}/)).map { |e| account << e }
    end
    # account[0] == nil ? account[0] : false
    account
end

string_con_un_numero_de_cuenta = "El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos"
string_con_un_numero_de_cuenta_no_valido = "El Cliente con el número de cuenta 4-12-12 se encuentra en proceso de revisión de sus documentos"
string_con_mas_de_un_numero_de_cuenta = "Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311"

p number_Account(string_con_un_numero_de_cuenta) == true
p number_account(string_con_un_numero_de_cuenta_no_valido)#
