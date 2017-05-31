=begin
Removiendo vocales
Crea el método vowels que recibe una lista de palabras words y remueve las vocales de cada string. Haz pasar la prueba correspondiente.

=end

def vowels(string)
  string.gsub(/[aeiou]/,'')
end
p vowels(["banana", "carrot", "pineapple", "strawberry"]) == ["bnn", "crrt", "pnppl", "strwbrry"]

