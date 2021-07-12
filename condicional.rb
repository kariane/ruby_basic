puts "Digite um número entre 5 e 10"
n1=gets.chomp.to_i
=begin
puts "Digite um número"
n1=gets.chomp.to_i

if n1>10 then
    puts "Maior que 10"
elsif n1>=5
   puts "Maior ou igual a 5 e está estre 5 e 10" 
else 
    puts "Menor ou igual a 5"
end
=end
#unless= a nao ser que 
=begin
unless n1>10
    puts "Número menor que 10"
else
    puts "Maior ou igual a 10"
end
=end
case n1
    when 5
        puts "O número é 5"
    when 6
        puts "O número é 6"
    when 7
        puts "O número é 7"
    when 8
        puts "O número é 8"
    when 9
        puts "O número é 9"
    when 10
        puts "O número é 10"
    else 
        puts "valor inválido"
end