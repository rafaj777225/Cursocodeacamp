=begin
Buscando en hashes
Ahora vamos a aprovechar los Hashes como herramienta de organización para distinguir alimentos por grupo alimenticio. 
Para esto deberás generar un método que tome como parámetro un string que contenga una comida, y buscarlo en el siguiente hash, 
regresando su key como valor de retorno, si no encuentra la comida deberá regresar "comida no encontrada".

# Deberás utilizar este Hash como base de tu programa
    # Driver code
    p food_group('Crema') == "lacteo"
    p food_group('Res') == "carne"
    p food_group('Piña') == "fruta"
    p food_group('Caña') == "comida no encontrada"  
=end


def food_group(string)

  food_groups = {

    "grano" => ['Arroz','Trigo', 'Avena', 'Cebada', 'Harina'],
    "vegetal" => ['Zanahoria', 'Maiz', 'Elote', 'Calabaza', 'Papa'],
    "fruta" => ['Manzana', 'Mango', 'Fresa', 'Durazno', 'Piña'],
    "carne" => ['Res', 'Pollo', 'Salmon', 'Pescado', 'Cerdo'],
    "lacteo" => ['Leche', 'Yogurt', 'Queso', 'Crema']
    
    }
nombreHash="x"

    food_groups.each do |x,y|
          y.each do |v|
        if v==string
            nombreHash=x
        else
            nombreHash="Comida no encontrada"
        end 
      end    
    end

nombreHash
end

p food_group('Crema')# == "lacteo"
p food_group('Res')# == "carne"
p food_group('Piña')# == "fruta"
p food_group('Caña') #== "comida no encontrada" 
