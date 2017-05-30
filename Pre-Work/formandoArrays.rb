def array_index(arreglo,factor)
  array=[]
    arreglo.each do |x|
      (1..factor).each do |y|
        array<<[x,y]
      end
    end
  p array
end
p array_index(["c", "b", "a"], 2) == [["c", 1], ["c", 2], ["b", 1], ["b", 2], ["a", 1], ["a", 2]]
p array_index(["a"], 3) == [["a", 1], ["a", 2], ["a", 3]]