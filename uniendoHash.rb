# Define el método join_hash que recibe tres hashes y regresa la unión de los hashes. No uses merge. Se recomienda usar iteración.
def join_hash(hash1,hash2,hash3)
hash_nuevo=Hash.new 

 array=[hash1,hash2,hash3]

  for i in 0..(array.length-1)
       array[i].each do |key,value|
          hash_nuevo[key]=value
      end  

  end  
   hash_nuevo
end

fruit = {name: "pineapple"}
weight = {weight: "1 kg"}
taste = {taste: "good"}

#test
p join_hash(fruit, weight, taste) == {:name=>"pineapple", :weight=>"1 kg", :taste=>"good"} 
