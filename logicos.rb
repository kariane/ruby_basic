#os operadores lógicos são: (&&, and), (||, or), (!, not)
l1=1
l2=3
l3=4
l4=6
=begin
if l1==l2 && l3==l4 and l3==l1
    puts "todos os números são todos iguais"
else
    puts "Os números não são todos iguais"
=end
=begin
if l1==l2 || l1==l3 || l1==l4 || l2==l3 or l2==l4 or l3==l4
    puts "Ao menos 2 números são iguais"
else 
    puts "nenhum número se repete"
end
=end
if ! (l1<=l2)#dá pra usar o not também
    puts "O primeiro número é maior que o segundo"
else 
    puts "O primeiro número é menor que o segundo"
end