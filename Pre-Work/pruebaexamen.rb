# Deberás utilizar este Hash como base de tu programa

def food_group(string)
food_groups = {
    "grano" => ['Arroz','Trigo', 'Avena', 'Cebada', 'Harina'],
    "vegetal" => ['Zanahoria', 'Maiz', 'Elote', 'Calabaza', 'Papa'],
    "fruta" => ['Manzana', 'Mango', 'Fresa', 'Durazno', 'Piña'],
    "carne" => ['Res', 'Pollo', 'Salmon', 'Pescado', 'Cerdo'],
    "lacteo" => ['Leche', 'Yogurt', 'Queso', 'Crema']
    }
   array=[] 

    food_groups.each_value { |val| array<<val  }
        array.each do |e| 
          e.each do |c| 
            if string == c
              key=food_groups.key(e)
            end
          end    
        end   
  if key=="" 
    key="comida no encontrada"
  end
    key
end

 p food_group('Crema') # == "lacteo"