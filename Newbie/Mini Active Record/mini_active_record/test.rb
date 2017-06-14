require_relative 'app'
require 'pp'

# def assert(truthy)
#   raise "Tests failed" unless truthy
# end


# Este es un ejemplo de test ya que los nombres de los chefs son aleatorios, este test muy probablemente fallará
# assert chef[:first_name] == 'Ferran'
# assert chef[:last_name] == 'Adria'
# chef = Chef.create(first_name: "Eduardo", last_name: "Fernández", email:"eduardo@gmail.com", phone:"930-028-2908 x7555",birthday:Time.now)
print chef = Chef.find(2)

puts "finished"