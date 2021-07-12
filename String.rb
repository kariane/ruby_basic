nome = "Joana d'Arc"
# o metodo de concatenação é feito a partir de: #{variavel}
#marcadores de interpolação: #{}
boas_vindas = "Seja bem vinda(o) #{nome}"
puts boas_vindas
#puts "#{sleep 1}mensagem" 
#Outra forma de declarar strings
puts 'isso é "normal" e \'util\' no mundo Ruby'
puts "Isso é \"normal\" e 'util' no mundo Ruby"
#Qualquer caractere não alfa numérico pode ser usado após o %, exemplo:b 
string_especial = %{Isso é "normal" e 'util' no mundo Ruby}
puts string_especial

string_especial1 = %?Isso é "normal" e 'util' no mundo Ruby?
puts string_especial1

string_especial2 = %~Isso é "normal" e 'util' no mundo Ruby~
puts string_especial2
#Esta forma de declaração de String possui algumas variações, que podem, por exemplo, adicionar a capacidade de interpolar variáveis.
#• %q : Não permite interpolação; 
#• %Q : Permite interpolação.