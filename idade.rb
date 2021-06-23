idade = 18
nome = "Kariane"
puts ("Hello World!")
puts(idade)
puts idade.class
if(idade>=18)
    puts(nome)
end
#ou if idade>=18 (pode-se usar sem os parênteses), chamamos isso de Sintax Sugar da linguagem Ruby
#se seu corpo do if tiver apenas uma linha, é possível usar uma sintaxe mais enxuta, exemplo:
puts nome if idade >=18