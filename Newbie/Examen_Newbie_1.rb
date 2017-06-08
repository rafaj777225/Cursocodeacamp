# =begin
# Examen Newbie 1

# Clases
#       Crear una clase CreditCard que tenga como datos la información que aparece en la tabla de ejemplo. 
#       Posteriormente crea un arreglo con cinco objetos de tarjetas de crédito e imprime la información de 
#       cada tarjeta en una tabla. Utiliza las pruebas y la tabla que se presenta de ejemplo.


# Tabla con datos de tarjetas

# |     name     |     number     |    expiration  |      cvc      |           status          |
# ----------------------------------------------------------------------------------------------
# |   Amex       |    2345673444  |      12/15     |      2345     | [234, 567, 456, 567, 344] |  
# |   ScotiaBank |    2345673744  |      12/16     |      2845     | [234, 345, 456, 567, 344] |  
# |   Bancomer   |    2345673444  |      12/15     |      2645     | [234, 345, 456, 567, 344] |  
# |   Serfin     |    2345473454  |      12/20     |      1345     | [234, 345, 456, 567, 344] |  
# |   BanCoppel  |    2345373464  |      12/18     |      2445     | [567, 345, 456, 567, 344] |   
# =end 
# Clase CreditCard
class CreditCard
  attr_reader :name, :number, :expiration, :cvc
  attr_accessor :status
    def initialize(name,number,expiration,cvc,status)
      @name = name 
      @number = number
      @expiration = expiration
      @cvc = cvc
      @status = status
      @informacion = 0
    end
    
    def information
      informacion = "#{@name}", "#{@number}", "#{@expiration}", "#{@cvc}", "#{@status}"  
    end  

end
#Cinco instancias de CreditCard
cards=[]
cards[0]=CreditCard.new("Amex","2345673444","12/15","2345","[234, 567, 456, 567, 344]")
cards[1]=CreditCard.new("ScotiaBank","2345673744","12/16","2845","[234, 345, 456, 567, 344]")
cards[2]=CreditCard.new("Bancomer","2345673444","12/15","2645","[234, 345, 456, 567, 344]")
cards[3]=CreditCard.new("Serfin","2345473454 ","12/20","1345","[234, 345, 456, 567, 344]")
cards[4]=CreditCard.new("BanCoppel","2345373464","12/18","2445","[567, 345, 456, 567, 344]")
#Array con cinco objetos de tarjetas de crédito
cardsArray = []
cards.each do |x|
  cardsArray<<x.information
end  
#método para mostrar datos de tarjetas

print "Name".center(20)," Number".center(25)," Expiration".center(20)," Cvc".center(22)," Status".center(25),"\n"
puts "______________________________________________________________________________________________________________________________________"
cardsArray.each do |x|
  x.each do |card|
    print "|",card.center(20),"|"
  end
   print "\n"
end
print "\n"

cards.each do |card|
   puts "#{card.name} responds to:"
   puts "\tName: #{card.respond_to?(:name) == true}"
   puts "\tNumber: #{card.respond_to?(:number) == true}"
   puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
   puts "\tcvc: #{card.respond_to?(:cvc) == true}"
   puts "\tGet status: #{card.respond_to?(:status) == true}"
   puts "\tSet status: #{card.respond_to?(:status=) == true}"
   puts "\n\n"
end

# # Herencia
# # Crea las clases Athlete, Runner, Swimmer y Cyclist, trata de relacionarlas a través de herencia. |
# # Cada atleta podrá incrementar el total de la distancia recorrida y el tiempo total de ejercicio. |
# # Al final cada tipo de atleta deberá mostrar la distancia total recorrida, el tiempo total y la 
# # velocidad obtenida. 
# # Es importante considerar los casos cuando la distancia recorrida es igual a 0 y mayor que 0. 
# # Todas las pruebas deberán pasar.

# # Athlete class
class Athlete
#   variables de clase
@@total_time=0
@@total_distance=0
#metodos de acceso de lectura y escritura
attr_accessor :total_time, :total_distance,:speed_record
  # método para validar tiempo
  def timeValidation(time)
    # tiempo debe ser mayor a cero ya que de otra forma no podriamos determinar nuestra velocidad o seria cero
    if time > 0
      #regresa un true solo para identificar que sea mayor a cero
      true
    else
      false  
    end
  end

  # método para obtener velocidad del atleta
  # recibe la distancia y el tiempo 
  def speed(distance, time)
    # si tiempo es true 
    if timeValidation(time) == true 
    # determinamos la velocidad por v = d/t
    # con tiempo tipo float  
      @speed_record=distance/time.to_f
    # redondeamos el float a centecimas   
      @speed_record.round(2)
    else
    # esta condicion es para cuando el tiempo y la distancia den cero o tengan valor por default   
      @speed_record = 0
    end
  end
end
# Runner class hereda de Athlete class
class Runner < Athlete
  # metodo constructor con argumentos con valor inicla de cero
  def initialize(distance=0, time=0)
    # variables de instancia
    @distance=distance
    @time=time
    #varibales de clase incrementando segun argumento de metodo
    @@total_distance+=distance
    @@total_time+=time
  end
  # metodo de clase con argumentos 
  def new_workout(distance, time)
    #variables de metodo
     @distance+=distance
     @time+=time
     #variables de clase incrementando segun argumento
     @@total_distance+=distance
     @@total_time+=time
  end
  #metodo de salida 
  def run
    "Ran #{@distance} meters, time: #{@time} seconds, speed: #{speed(@distance, @time)} m/s"
  end
end


class Swimmer < Athlete

def initialize(distance, time)
  #variables de instancia
    @distance=distance
    @time=time
    #variables de clase
    @@total_distance+distance
    @@total_time+time
  end
  def new_workout(distance,time)
    #variables de instancia
     @distance+distance
     @time+time
     #variables de clase
     @@total_distance+distance
     @@total_time+time
  end
  def swim
      "Swam #{@distance} meters, time: #{@time} seconds, speed: #{speed(@distance, @time)} m/s"
  end  
end
class Cyclist < Athlete
attr_reader :ride_bike
  def initialize(distance, time)
    #variables de instancia
    @distance=distance
    @time=time
    #variables de clase
    @@total_distance+distance
    @@total_time+time
  end
  def new_workout(distance, time)
    #variables de instancia
     @distance+distance
     @time+time
     #variables de clase
     @@total_distance+distance
     @@total_time+time
  end

end
# tests

# instancias de atletas con distancia en metros
runner = Runner.new()
swimmer = Swimmer.new(50, 10)
cyclist = Cyclist.new(70, 27)

athletes = [runner, swimmer, cyclist]

athletes.each do |athlete|
#   #¿qué tipo de atleta es?
puts "#{athlete.class} responds to:"
puts "\tAthlete speed: #{athlete.respond_to?(:speed) == true}"
puts "\tGet Athlete time: #{athlete.respond_to?(:total_time) == true}"
puts "\tSet Athlete time: #{athlete.respond_to?(:total_time=) == true}"
puts "\tSpeed record: #{athlete.respond_to?(:speed_record) == true}"
puts "\tGet Distance: #{athlete.respond_to?(:total_distance) == true}"
puts "\tSet Distance: #{athlete.respond_to?(:total_distance=) == true}"
puts "\trun method: #{athlete.respond_to?(:run) == true}" if athlete == runner
puts "\tswim method: #{athlete.respond_to?(:swim) == true}" if athlete == swimmer
puts "\tride_bike method: #{athlete.respond_to?(:ride_bike) == true}" if athlete == cyclist
puts "\n\n"
end

#test for runner

# test para runner con distancia = 0
p runner.run == "Ran 0 meters, time: 0 seconds, speed: 0 m/s"
# #test para runner al hacer ejercicio, incrementa distancia = 20 metros y tiempo = 7 segundos
runner.new_workout(20, 7) 
# #test para runner con distancia = 20 metros y tiempo = 7 segundos
p runner.run== "Ran 20 meters, time: 7 seconds, speed: 2.86 m/s"
# test para swimmer con distancia = 50
p swimmer.swim == "Swam 50 meters, time: 10 seconds, speed: 5.0 m/s"

=begin
En una pista de carrera se realizan ciertas pruebas de velocidad a diferentes race cars. 
Se necesita medir para cada carro la velocidad promedio de acuerdo a cinco laptimes registrados. 
El lapdistance de la pista es de 100 metros. Esta distancia es importante que la consideres constante en el programa.

Es necesario crear una clase RaceCar que contemple el nombre del carro y los tiempos de cada lap que ha registrado. 
Hay que considerar un método que retorne la velocidad promedio de cada carro, otro método que muestre el nivel de 
cada carro dependiendo de su velocidad (Principiante, Normal, Medio, Avanzado). 
Posteriormente, crear una clase Team que permita formar equipos de carros. Por último, crear un método que permita 
buscar si existe un determinado carro en un equipo. Todas las pruebas deben pasar.
Extra - Crea un metodo en team que regrese el promedio de velocidad del equipo.
Extra - Genera una tabla que muestre el coche y su nivel. 

|    Name        |    Nivel        |
------------------------------------
|   Force        |   Principiante  |
|   Power        |   Medio         |
|   Passwater    |   Normal        |
|   Banjo        |   Normal        |
|   Duck         |   Normal        |
=end
# racecar class
class RaceCar
  #metodo de lectura
  attr_reader :name
  #metodo constructor
  def initialize(name)
    # variable de instancia
    @name = name
  end
  #método para obtener velocidad promedio
  def average_speed

    laptimes = 0
    5.times do |lap|
      time = rand(1..100)
      laptimes += (100 / time)
    end
    laptimes / 5
  end

  #método que muestra nivel de cada race car
  def level
    case average_speed
    when (0..20)
      'Principiante'
    when (21..40)
      'Normal'
    when (41..60)
      'Medio'
    when (61..80)
      'Avanzado'          
    end
  end
end

class Team < RaceCar
  attr_reader :team
  def initialize(team)
    @team = team
  end

  def average_speed_of_team
    suma_equipo = 0

    team.each do |car|
      suma_equipo += car.average_speed
    end

    suma_equipo / team.length.to_f
  end

  def team_level
    print "Car".center(10),"Level".center(10),"\n"
    print "_________________________________","\n"
    team.each do |car|
      print "|","#{car.name}:    |".center(5),"#{car.level} ".center(5),"|".center(5),"\n"
    end
  end
    puts " "

end

car1 = RaceCar.new('Force')
car2 = RaceCar.new('Power')
car3 = RaceCar.new('Passwater')
car4 = RaceCar.new('Banjo')
car5 = RaceCar.new('Duck')


p "car1: #{car1.average_speed} m/s #{car1.level}"
#ej. car1: 9.5 m/s
p "car2: #{car2.average_speed} m/s #{car2.level}"
#ej. car2: 12.01 m/s
p "car3: #{car3.average_speed} m/s #{car3.level}"
#ej. car3: 10.65 m/s
p "car4: #{car4.average_speed} m/s #{car4.level}"
#ej. car4: 11.0 m/s
p "car5: #{car5.average_speed} m/s #{car5.level}"
#ej. car5: 10.15 m/s

#create a team of cars 
team1 = [car1, car2, car3, car4, car5]
team_one = Team.new(team1)

  def search(name, team)
    racer = ""  
    team.team.each do |car|
      if car.name == name
        return racer = "#{car.name} is a racer"
      else
        racer = "The #{name} racer don't exists in this team"
      end
    end
    racer
  end

#test para buscar race car en equipo team_one
p search("Power",team_one) == "Power is a racer"

#calculate average speed of team
p team_one.average_speed_of_team

team_one.team_level

=begin
  Playlist
  Crea la clase Playlist que para inicializarla recibe 2 argumentos: name (nombre del playlist) y songs (lista de canciones).
  Crea una forma para poder leer el nombre del Playlist.
  Crea el método number_of_songs que regresa el número de canciones que contiene el Playlist.
  Crea el método add_song que agrega una canción a la lista.
  Crea el método next_song que regresa la siguiente canción del Playlist. Para esto necesitarás llevar control de cuál es la 
  canción actual. Si el playlist se encuentra en la última canción debe de volver a iniciar.
  Al crear una nueva instancia de Playlist la canción actual por default debería ser la primera canción de la lista que le pasen.
=end

class Playlist
  attr_reader :name, :listsongs
  @@number_song = 0
  def initialize(name,listsongs)
     @name = name
     @listsongs = listsongs
  end
  def number_of_song
    @listsongs.length-1
  end
  def new_song(newtrack)
    @listsongs << newtrack
  end
  def next_song
    if @@number_song == listsongs.length-1
       @@number_song = 0
      @listsongs[@@number_song]
    else
      @@number_song = @@number_song+1
      @listsongs[@@number_song]
    end
  end
def play_song
    @listsongs[@@number_song]
  end
end  

playlist = Playlist.new("punksongs",["i'm just a kid","Walk under rain","Bulletproof","Wish your well"])

p "Numero de canciones: ",playlist.number_of_song
p "Nombre del playlist: ",playlist.name
p "Playslist :",playlist.listsongs
# Agrego una nueva cancion a mi play list:
playlist.new_song("Wallet")

p "Playslist :",playlist.listsongs
p "Cancion actual",playlist.play_song
puts
p "Siguientes en la lista"
print "2: ", playlist.next_song,"\n"
print "3: ", playlist.next_song,"\n"
print "4: ", playlist.next_song,"\n"
print "5: ", playlist.next_song,"\n"
print "1: ", playlist.next_song,"\n"
print "2: ", playlist.next_song,"\n"



