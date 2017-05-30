=begin

Define una variable de tipo Hash con los keys: :name, :email, :genre.

Asigna tus datos como valores a las keys.


=end

persona=Hash.new 

persona[:name]=  "Rafael Jordan"
persona[:email]= "rafaj_1592@hotmail.com"
persona[:genre]= "Hombre"



persona.each do |key,value|

  p key,value
end