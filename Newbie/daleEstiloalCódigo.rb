class PERSON
  # define hash with this respectives values    
  @@life_stage = {childhood: 12,teenager: 19,adult: 50}
  # define constant
  LEGAL_AGE = 18
  # define method accesssor
  attr_accessor :name
  # define constructor method
  def initialize(name, age) 
    #instance variable
    @name = name
    @age = age
  end
  #define method age
  def age
    # instances variable
    @age
  end
  # define method
  def lifeStage
    # in this part we use conditional that compare age with category
    # if age is bigger than smaller than  return any key of the hash
    if @age < @@life_stage[:childhood]
      :childhood
    elsif @age< @@life_stage[:teenager]
      :teenager
    elsif @age< @@life_stage[:adult]
      :adult
    else
      :elder
    end
  end
  # for last this method question if age is bigger than legal age
  # and return boolean value
  def legal?
    @age >= LEGAL_AGE
  end  
end


# Esta parte del código son pruebas. 
# Antes y después deben de imprimir puros "true"
# we create instance
fernando = PERSON.new("Fernando",5)
juan = PERSON.new("Juan",45)
laura = PERSON.new("Laura",87)
andrea = PERSON.new("Andrea",13)
# test
puts fernando.legal? == false
puts juan.legal? == true
puts laura.legal? == true
puts andrea.legal? == false

puts fernando.lifeStage == :childhood
puts juan.lifeStage == :adult
puts laura.lifeStage == :elder
puts andrea.lifeStage == :teenager

puts laura.age == 87
laura.name = "Ximena"
puts laura.name == "Ximena"