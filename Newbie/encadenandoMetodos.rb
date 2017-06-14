# TODO: Refactoriza buscando elegancia 
def shout_backwards(string)
  # coloca el string enmayusculas y lo escribe inversarmente concatenando un string con 3 signos de admiracion
  string.upcase.reverse + "!!!"
  
  # all_caps  = string.upcase
  # backwards = all_caps.reverse
  # result    = backwards + "!!!"
  # return result
end


# AYUDAME: Refactoriza buscando elegancia 
def squared_primes(array)
  # array.find_all{|x| (2..x-1).select(){|i| x % i == 0 }.count == 0 }.map{|p| p*p}
numbers = [] 
  array.each  do |x|
    if x%2!= 0
     numbers << x*x
    end
  end 
  numbers
end

# Driver code... no edites este texto. En la consola esto deberá imprimir puros trues
puts shout_backwards("hello, boot") == "TOOB ,OLLEH!!!"
puts squared_primes([1, 3, 4, 7, 42])== [1, 9, 49]
