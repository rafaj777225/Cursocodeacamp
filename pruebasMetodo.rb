def caesar_cipher(original_text, rotate_number)
  original_alphabet = "abcdefghijklmnopqrstuvwxyz"    #string con el alfabeto
  cipher_text = ""                                    #array vacio
  original_text.split("").each do |letter|            
    if "?.,! ".include?(letter)
      cipher_text << letter
    else
       cipher_alphabet = original_alphabet[(original_alphabet.index(letter.downcase) + rotate_number) % original_alphabet.size]
      if letter == letter.upcase
        cipher_text << cipher_alphabet.upcase
      else
        cipher_text << cipher_alphabet
      end
    end
  end
  cipher_text
end


p caesar_cipher("Spartacus",2)=="Urctvcewu"
p caesar_cipher("sin mayusculas",1)=="tjo nbzvtdvmbt"
p caesar_cipher("Estas ahi ?",2)=="Guvcu cjk ?"
p caesar_cipher("TODO EN MAYUSCULAS",2)=="VQFQ GP OCAWUEWNCU"