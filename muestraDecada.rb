def decade(año)
 
  case año
    when 1920..1942
        "Twenties"
    when 1943..1951
        "Forties"
    when 1952..1959
        "Fifties"
    when 1960..1974
        "Sixties"
    when 1975..1981
        "Seventies"
    when 1982..1998
        "Eighties"
    else 1999
        "Nineties"
    end

end
# Pruebas
p decade(1920) == "Twenties"
p decade(1943) == "Forties"
p decade(1952) == "Fifties"
p decade(1960) == "Sixties"
p decade(1975) == "Seventies"
p decade(1982) == "Eighties"
p decade(1999) == "Nineties"