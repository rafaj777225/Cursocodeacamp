def cuentaRegresiva(numero)
  p numero
  if numero==1
    return 1
  else
    cuentaRegresiva(numero-1)
  end  
end

cuentaRegresiva(20)
