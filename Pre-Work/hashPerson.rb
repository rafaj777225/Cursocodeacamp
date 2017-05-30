=begin
 Dado el siguiente hash:

person = {first_name: 'Bob', email: 'bob@mail.com', phone: '12345690'}

1) Obtén el nombre de la persona.
2) Agrega en el hash una ocupación para la persona.

=end


person = {first_name: 'Bob', email: 'bob@mail.com', phone: '12345690'}

p person[:first_name]=='Bob'
person[:ocupacion]="Doctor"
p person
