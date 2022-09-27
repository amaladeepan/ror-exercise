require 'set'

A = Set[1,2,3,4,5,6]
B = Set[4,5,6,7,8,9,10]

puts "Set A : #{A}"
puts "Set B : #{B}"

puts "Union: A U B : #{A | B}" 
puts "Intersection: A ∩ B : #{A & B}"

U = A + B
puts "Universal Set: U = A + B : #{U}"
puts "Complement of set A:  A' = U - A #{U - A}"
puts "Complement of set B:  A' = U - A #{U - B}"

puts "Cartesian Product of Sets A and B : #{A.to_a.product(B.to_a)}"
puts "Commutative law:: A ∪ B = B ∪ A and A ∩ B = B ∩ A :: #{A|B == B|A and A&B == B&A}"