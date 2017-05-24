def replace_vowels(lista)
  lista.each do |a|
     a.gsub!(/[aeiou]/,'x')
  end
end

p replace_vowels(["banana", "apple"]) == ["bxnxnx", "xpplx"]