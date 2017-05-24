# Detectando la Palabra Visa

=begin 
Crea la variable payment y asígnale el valor 'Welcome, your Visa Credit Card has been processed'. 
Imprime "Credit Card has been Charged si la variable payment incluye la palabra Visa, para cualquier otro caso imprime "We only accept visa credit card".
=end
payment="Welcome, your Visa Credit Card has been processed"

if(payment.include? "Visa")
  puts  "Credit Card has been Charged"
else
  puts "We only accept visa credit card"
end